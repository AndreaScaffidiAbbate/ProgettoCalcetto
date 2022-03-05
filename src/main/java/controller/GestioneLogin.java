package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Partita;
import model.Squadra;

@WebServlet(name = "gestione_login", urlPatterns = "/GestioneLogin")
public class GestioneLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory emf;
	private EntityManager em;
	private Squadra utente;

	public GestioneLogin() {
		super();
	}

	@Override
	public void init() throws ServletException {
		super.init();
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		this.utente = new Squadra();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("action").equals("modificap")) {
			HttpSession session = request.getSession();
			session.setAttribute("partite", trovaPartitaSingolaAdmin2());
			request.getRequestDispatcher("modifica_punti.jsp").forward(request, response);
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		String check = request.getParameter("check");
		
		try { 
			this.utente = utenteCheck(email, password);
		}catch(NoResultException e) {
			request.setAttribute("emailnontrovata", email);
			request.setAttribute("passwordnontrovata", password);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		if (!email.equals("") && !password.equals("")) {
			if (utente.getRuoloUtente() == 2) {

				try {
					if (utente != null) {

						if (check != null) {
							Cookie ck_email = new Cookie("email", email);
							Cookie ck_password = new Cookie("password", password);
							ck_email.setMaxAge(20);
							ck_password.setMaxAge(20);
							HttpSession session = request.getSession();
							session.setAttribute("utente", utente);
							response.addCookie(ck_email);
							response.addCookie(ck_password);
						}
					}
				} catch (NoResultException f) {
					request.setAttribute("emailnontrovata", email);
					request.setAttribute("passwordnontrovata", password);
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			
			HttpSession session = request.getSession();
			session.setAttribute("userLogin", this.utente);
			
			//trovaPartita(utente.getIdSquadra());
			if(trovaPartita(utente.getIdSquadra())!= null) {
			session.setAttribute("partite", trovaPartita(utente.getIdSquadra()));
			}
			//System.out.println(trovaPartita(utente.getIdSquadra()).toString());
			request.getRequestDispatcher("home_user.jsp").forward(request, response);
		}
		else if(utente.getRuoloUtente() == 1) {
			try {
				if (utente != null) {

					if (check != null) {
						Cookie ck_email = new Cookie("email", email);
						Cookie ck_password = new Cookie("password", password);
						ck_email.setMaxAge(20);
						ck_password.setMaxAge(20);
						HttpSession session = request.getSession();
						session.setAttribute("utente", utente);
						response.addCookie(ck_email);
						response.addCookie(ck_password);
					}
				}
			} catch (NoResultException f) {
				request.setAttribute("emailnontrovata", email);
				request.setAttribute("passwordnontrovata", password);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		
		HttpSession session = request.getSession();
		session.setAttribute("userLoginStaff", this.utente);
		
		if(trovaPartita(utente.getIdSquadra())!= null) {
			session.setAttribute("partite", trovaPartitaAdmin());
			}
			//System.out.println(trovaPartita(utente.getIdSquadra()).toString());
			request.getRequestDispatcher("home_admin.jsp").forward(request, response);
		//response.sendRedirect("home_admin.jsp");
	}
			
		
		else {
		try {
			if (utente != null) {

				if (check != null) {
					Cookie ck_email = new Cookie("email", email);
					Cookie ck_password = new Cookie("password", password);
					ck_email.setMaxAge(20);
					ck_password.setMaxAge(20);
					HttpSession session = request.getSession();
					session.setAttribute("utente", utente);
					response.addCookie(ck_email);
					response.addCookie(ck_password);
				}
			}
		} catch (NoResultException f) {
			request.setAttribute("emailnontrovata", email);
			request.setAttribute("passwordnontrovata", password);
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

		HttpSession session = request.getSession();
		session.setAttribute("userLoginAdmin", this.utente);
		request.getRequestDispatcher("home_admin.jsp").forward(request, response);
	}
		}
	
	}


private Squadra utenteCheck(String email, String password) {
	return em.createQuery(
			"SELECT u FROM Squadra u WHERE u.emailUtente='" + email + "' AND u.passwordUtente='" + password + "'",
			Squadra.class).getSingleResult();
}


private  List<Partita> trovaPartita(int squadra) { 
	return (List<Partita>) em.createQuery(
			"SELECT u FROM Partita u WHERE u.squadra1.idSquadra='" + squadra + "' OR u.squadra2.idSquadra='" + squadra + "'",
			Partita.class).getResultList();
}

private  List<Partita> trovaPartitaAdmin() { 
	return (List<Partita>) em.createQuery(
			"SELECT u FROM Partita u ",
			Partita.class).getResultList();
}

//private  Partita trovaPartitaSingolaAdmin1(int id) { 
//	return  em.createQuery(
//			"SELECT p FROM Partita p INNER JOIN Squadra s ON s.idSquadra = p.squadra1 WHERE s.idSquadra='" + id + "'",
//			Partita.class).getSingleResult();
//}

private  Partita trovaPartitaSingolaAdmin2() { 
	return  em.createQuery(
			"SELECT p FROM Partita p, Squadra s WHERE s.idSquadra = p.squadra1.idSquadra",
			Partita.class).getSingleResult();
}


//SELECT id_partita FROM calcetto.partita, calcetto.squadra WHERE squadra_id_1 = id_squadra;



//"SELECT a FROM Account a, User u   WHERE u.account_id = a.id AND a.email = :email AND a.pwd = :pwd AND a.role = 'admin'", Account.class);

//private int getUtenteByEmail(String email) {
//	return (int) em.createQuery("SELECT u.ruoloUtente FROM Squadra u WHERE u.emailUtente='" + email + "'")
	//		.getSingleResult();
//}

}
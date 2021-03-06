package controller;

import java.io.IOException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.RollbackException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Squadra;

@WebServlet(name = "gestione_registrazione", urlPatterns = "/GestioneRegistrazione")
public class GestioneRegistrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory emf;
	private EntityManager em;

	public GestioneRegistrazione() {
		super();
	}

	@Override
	public void init() throws ServletException {
		super.init();
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome").trim();
		String cognome = request.getParameter("cognome").trim();
		String nomesquadra = request.getParameter("nome_squadra").trim();
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		String colore = request.getParameter("colore").trim();
		
	

		if (!nome.equals("") && !cognome.equals("") && !nomesquadra.equals("") && !email.equals("")
				&& !password.equals("") && !colore.equals("")) {
			Squadra utente = new Squadra();
			utente.setNomeUtente(nome);
			utente.setCognomeUtente(cognome);
			utente.setNomeSquadra(nomesquadra);
			utente.setEmailUtente(email);
			utente.setPasswordUtente(password);
			utente.setColoreSquadra(colore);
			utente.setRuoloUtente(2);
			try {
				addUtente(utente);
				HttpSession sessionreg =  request.getSession();
				sessionreg.setAttribute("idsquadra", getIdByUtente(email));
				request.getRequestDispatcher("crea_squadra.jsp").forward(request, response);
			} catch (RollbackException e) {
				request.setAttribute("emailtrovata", email);
				request.setAttribute("squadratrovata", nomesquadra);
				request.getRequestDispatcher("registrazione.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("emailtrovata", email);
			request.setAttribute("squadratrovata", nomesquadra);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/dispatcher_registrazione");
			dispatcher.forward(request, response);
		}
	}

	private void addUtente(Squadra utente) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(utente);
		em.getTransaction().commit();
	}
	
	private int getIdByUtente(String email) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (int) em.createQuery("SELECT u.idSquadra FROM Squadra u WHERE u.emailUtente='" +email + "'").getSingleResult();
	}
	
	

}

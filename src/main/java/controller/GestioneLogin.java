package controller;


import java.io.IOException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		String check = request.getParameter("check");
		if (!email.equals("") && !password.equals("")) {
			try {
			if(utenteCheck(email, password) != null) {
				
				if(check != null) {
					Cookie ck_email = new Cookie("email", email);
					Cookie ck_password = new Cookie("password", password);
					ck_email.setMaxAge(20);
					ck_password.setMaxAge(20);
					response.addCookie(ck_email);
					response.addCookie(ck_password);
				}
			}
			}catch(NoResultException e) {
				request.setAttribute("emailnontrovata", email);
				request.setAttribute("passwordnontrovata", password);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			}
			HttpSession session =  request.getSession();
			session.setAttribute("userLogin", this.utente);
		

		response.sendRedirect("calendar_home.jsp");
	}


	private Squadra utenteCheck(String email, String password) {	
	return em.createQuery("SELECT u FROM Squadra u WHERE u.emailUtente='" +email + "' AND u.passwordUtente='" +password +"'", Squadra.class).getSingleResult();
	}
		

}



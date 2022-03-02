package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.RollbackException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			// if (controlloEmail(email) == null) {
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
		em.getTransaction().begin();
		em.persist(utente);
		em.getTransaction().commit();
	}

}

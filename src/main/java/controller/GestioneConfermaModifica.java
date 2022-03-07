package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Giocatore;
import model.Squadra;

@WebServlet(name = "gestione_conferma_modifica", urlPatterns = "/GestioneConfermaModifica")
public class GestioneConfermaModifica extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory emf;
	private EntityManager em;
	private Squadra utente = new Squadra();

	public GestioneConfermaModifica() {
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

		String nome1 = request.getParameter("nome1").trim();
		String cognome1 = request.getParameter("cognome1").trim();
		String ruolo1 = request.getParameter("ruolo1");
		int nmaglia1 = Integer.parseInt(request.getParameter("n_maglia1"));

		String nome2 = request.getParameter("nome2").trim();
		String cognome2 = request.getParameter("cognome2").trim();
		String ruolo2 = request.getParameter("ruolo2");
		int nmaglia2 = Integer.parseInt(request.getParameter("n_maglia2"));

		String nome3 = request.getParameter("nome3").trim();
		String cognome3 = request.getParameter("cognome3").trim();
		String ruolo3 = request.getParameter("ruolo3");
		int nmaglia3 = Integer.parseInt(request.getParameter("n_maglia3"));

		String nome4 = request.getParameter("nome4").trim();
		String cognome4 = request.getParameter("cognome4").trim();
		String ruolo4 = request.getParameter("ruolo4");
		int nmaglia4 = Integer.parseInt(request.getParameter("n_maglia4"));

		String nome5 = request.getParameter("nome5").trim();
		String cognome5 = request.getParameter("cognome5").trim();
		String ruolo5 = request.getParameter("ruolo5");
		int nmaglia5 = Integer.parseInt(request.getParameter("n_maglia5"));

		HttpSession session = request.getSession();
		Squadra utente = (Squadra) session.getAttribute("utente");
		int idsquadra = utente.getIdSquadra();
		if (!nome1.equals("") && !nome2.equals("") && !nome3.equals("") && !nome4.equals("") && !nome5.equals("")) {

			if (!cognome1.equals("") && !cognome2.equals("") && !cognome3.equals("") && !cognome4.equals("")
					&& !cognome5.equals("")) {
				ArrayList<String> ruoli = new ArrayList<String>();
				ruoli.add(ruolo1);
				ruoli.add(ruolo2);
				ruoli.add(ruolo3);
				ruoli.add(ruolo4);
				ruoli.add(ruolo5);

				if (ruoli.contains("Pivot") && ruoli.contains("Portiere") && ruoli.contains("Laterale 1")
						&& ruoli.contains("Laterale 2") && ruoli.contains("Centrale")) {
					Squadra squadra = getSquadraById(idsquadra);
						List<Giocatore> listagiocatorivecchi = getAllGiocatoreById(utente);
					    for (Giocatore giocatore : listagiocatorivecchi) {
					    	removeGiocatore(giocatore);
					    }
					
					Giocatore giocatore1 = new Giocatore(cognome1, nome1, nmaglia1, ruolo1, squadra);
					aggiungiGiocatore(giocatore1);
					Giocatore giocatore2 = new Giocatore(cognome2, nome2, nmaglia2, ruolo2, squadra);
					aggiungiGiocatore(giocatore2);
					Giocatore giocatore3 = new Giocatore(cognome3, nome3, nmaglia3, ruolo3, squadra);
					aggiungiGiocatore(giocatore3);
					Giocatore giocatore4 = new Giocatore(cognome4, nome4, nmaglia4, ruolo4, squadra);
					aggiungiGiocatore(giocatore4);
					Giocatore giocatore5 = new Giocatore(cognome5, nome5, nmaglia5, ruolo5, squadra);
					aggiungiGiocatore(giocatore5);
					
					List<Giocatore> listagiocatorinuovi = new ArrayList<Giocatore>();
                    listagiocatorinuovi.add(giocatore1);
                    listagiocatorinuovi.add(giocatore2);
                    listagiocatorinuovi.add(giocatore3);
                    listagiocatorinuovi.add(giocatore4);
                    listagiocatorinuovi.add(giocatore5);
                    session.setAttribute("listagiocatori", listagiocatorinuovi);
				}

			}

			response.sendRedirect("home_user.jsp");
		}

	}

	private void aggiungiGiocatore(Giocatore giocatore) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.merge(giocatore);
		em.getTransaction().commit();
	}
	
	private void removeGiocatore(Giocatore giocatore) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.remove(giocatore);
		em.getTransaction().commit();
	}
	
	
	private List<Giocatore> getAllGiocatoreById(Squadra utente) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (List<Giocatore>) em.createQuery("SELECT u FROM Giocatore u WHERE u.squadra.idSquadra='" + utente.getIdSquadra() + "'").getResultList();
	}

	private Squadra getSquadraById(int id) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (Squadra) em.createQuery("SELECT u FROM Squadra u WHERE u.idSquadra='" + id + "'").getSingleResult();
	}

	public void modificaSquadra(Squadra u) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.merge(u);
		em.getTransaction().commit();
	}

}
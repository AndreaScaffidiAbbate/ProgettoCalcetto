package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Partita;
import model.Squadra;


@WebServlet("/gestione_partita")
public class GestionePartita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GestionePartita() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//eheh
		Partita partitaDaPrenotare = new Partita();
		String azione =request.getParameter("azione");
		int numeroCampo = Integer.parseInt(request.getParameter("numeroCampo"));
		String dataPartita =(String) session.getAttribute("dataP");
		String orarioPartita =request.getParameter("orario");
		String nomeSquadraOspitante =request.getParameter("ospitante");
		Squadra squadraOspitante = getSquadraByName(nomeSquadraOspitante);
	if(azione.equals("prenotaOspite")) {
		String nomeSquadraOspite =request.getParameter("ospite");
		Squadra squadraOspite = getSquadraByName(nomeSquadraOspite);
		int idPartita =Integer.parseInt(request.getParameter("idPartita"));
		partitaDaPrenotare.setCampoPartita(numeroCampo);
		partitaDaPrenotare.setDataPartita(dataPartita);
		partitaDaPrenotare.setOrarioPartita(orarioPartita);
		partitaDaPrenotare.setSquadra1(squadraOspitante);
		partitaDaPrenotare.setSquadra2(squadraOspite);
		partitaDaPrenotare.setIdPartita(idPartita);
		modificaPartita(partitaDaPrenotare);
	}else if(azione.equals("prenotaOspitante")) {

		partitaDaPrenotare.setCampoPartita(numeroCampo);
		partitaDaPrenotare.setDataPartita(dataPartita);
		partitaDaPrenotare.setOrarioPartita(orarioPartita);
		partitaDaPrenotare.setSquadra1(squadraOspitante);
		
		inserisciPartita(partitaDaPrenotare);
	}else {
		//rotto
	}
	
	
	
	Squadra utente = (Squadra) session.getAttribute("utente");
	List<Partita> partite = (List<Partita>) trovaPartita(utente.getIdSquadra());
	session.setAttribute("partite", partite);
	request.getRequestDispatcher("home_user.jsp").forward(request, response);
		
	
		
		
	}
	
	private  List<Partita> trovaPartita(int squadra) { 
		EntityManagerFactory	emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		EntityManager	em = emf.createEntityManager();
		return (List<Partita>) em.createQuery(
				"SELECT u FROM Partita u WHERE u.squadra1.idSquadra='" + squadra + "' OR u.squadra2.idSquadra='" + squadra + "'",
				Partita.class).getResultList();
	}
	private Squadra getSquadraByName(String nome) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		EntityManager	em = emf.createEntityManager();
		return (Squadra) em.createQuery(
				"SELECT u FROM Squadra u WHERE u.nomeSquadra='" + nome + "'",
				Squadra.class).getSingleResult();
	}
	private void inserisciPartita(Partita partita) {
		EntityManagerFactory	emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		EntityManager	em = emf.createEntityManager();
			em.getTransaction().begin();
			em.merge(partita);
			em.getTransaction().commit();
	 
	}
	private void modificaPartita(Partita partita) {
	EntityManagerFactory	emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
	EntityManager	em = emf.createEntityManager();
		em.getTransaction().begin();
		em.merge(partita);
		em.getTransaction().commit();
		 
	}
}

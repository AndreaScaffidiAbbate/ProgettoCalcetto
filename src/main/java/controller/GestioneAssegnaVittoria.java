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

@WebServlet("/AssegnaVittoria")
public class GestioneAssegnaVittoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory emf;
	private EntityManager em;
	public GestioneAssegnaVittoria() {
		super();
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
	String s1 = request.getParameter("s1").trim();
	String s2 =request.getParameter("s2").trim();
	String esito =request.getParameter("esito").trim();
	int partita =Integer.parseInt(request.getParameter("partita"));
	Partita partitaDaAggiornare = trovaPartitaId(partita);
	
	Squadra squadraCasa = getSquadraByName(s1);
	Squadra squadraOspiti = getSquadraByName(s2);
	
			if(partitaDaAggiornare.getEsitoPartita()!=null) {
				// togli i punti in base a esito vecchio che stai togliendo
				switch(partitaDaAggiornare.getEsitoPartita()) {
				case "Vittoria Casa": 
					squadraCasa.setVittoriaSquadra(squadraCasa.getVittoriaSquadra()-1);
					squadraOspiti.setSconfittaSquadra(squadraOspiti.getSconfittaSquadra()-1);
					
				break;
				case "Vittoria Ospiti":
					squadraOspiti.setVittoriaSquadra(squadraOspiti.getVittoriaSquadra()-1);
					squadraCasa.setSconfittaSquadra(squadraCasa.getSconfittaSquadra()-1);
				break;
				case "Pareggio": 
					squadraOspiti.setPareggioSquadra(squadraOspiti.getPareggioSquadra()-1);
					squadraCasa.setPareggioSquadra(squadraCasa.getPareggioSquadra()-1);
				break;
				
				}
				
				switch(esito) {
				case "Vittoria Casa": 
					squadraCasa.setVittoriaSquadra(squadraCasa.getVittoriaSquadra()+1);
					squadraOspiti.setSconfittaSquadra(squadraOspiti.getSconfittaSquadra()+1);
					
				break;
				case "Vittoria Ospiti":
					squadraOspiti.setVittoriaSquadra(squadraOspiti.getVittoriaSquadra()+1);
					squadraCasa.setSconfittaSquadra(squadraCasa.getSconfittaSquadra()+1);
				break;
				case "Pareggio": 
					squadraOspiti.setPareggioSquadra(squadraOspiti.getPareggioSquadra()+1);
					squadraCasa.setPareggioSquadra(squadraCasa.getPareggioSquadra()+1);
				break;
				
				}
				
			}else {
				switch(esito) {
				case "Vittoria Casa": 
					squadraCasa.setVittoriaSquadra(squadraCasa.getVittoriaSquadra()+1);
					squadraOspiti.setSconfittaSquadra(squadraOspiti.getSconfittaSquadra()+1);
					
				break;
				case "Vittoria Ospiti":
					squadraOspiti.setVittoriaSquadra(squadraOspiti.getVittoriaSquadra()+1);
					squadraCasa.setSconfittaSquadra(squadraCasa.getSconfittaSquadra()+1);
				break;
				case "Pareggio": 
					squadraOspiti.setPareggioSquadra(squadraOspiti.getPareggioSquadra()+1);
					squadraCasa.setPareggioSquadra(squadraCasa.getPareggioSquadra()+1);
				break;
				
				}
			}
			
			
			
			
			modificaSquadra(squadraCasa);
			modificaSquadra(squadraOspiti);
			partitaDaAggiornare.setSquadra1(squadraCasa);
			partitaDaAggiornare.setSquadra2(squadraOspiti);
			partitaDaAggiornare.setEsitoPartita(esito);
			modificaPartita(partitaDaAggiornare);
			
			session.setAttribute("partite", trovaPartitaAdmin()); 
			request.getRequestDispatcher("home_admin.jsp").forward(request, response);
	}
	
	
	
	private Squadra getSquadraByName(String nome) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (Squadra) em.createQuery("SELECT u FROM Squadra u WHERE u.nomeSquadra='" + nome + "'").getSingleResult();
	}
	private void  modificaSquadra(Squadra s) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.merge(s);
		em.getTransaction().commit();
	}
	private  List<Partita> trovaPartitaAdmin() { 
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (List<Partita>) em.createQuery(
				"SELECT u FROM Partita u ",
				Partita.class).getResultList();
	}
	
	private Partita trovaPartitaId(int id) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		return (Partita) em.createQuery("SELECT u FROM Partita u WHERE u.idPartita='" + id + "'").getSingleResult();
	}
	
	private void  modificaPartita(Partita p) {
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
		em.getTransaction().begin();
		em.merge(p);
		em.getTransaction().commit();
	}
	
	
	
}

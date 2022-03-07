package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
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

@WebServlet("/GestionePrenotazione")
public class GestionePrenotazione extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GestionePrenotazione() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int ngiorno = Integer.parseInt((String) request.getParameter("ngiorno"));
		Partita[][] prenotazioni = getAllPartiteByDate(LocalDate.now().plusDays(ngiorno - 1).toString());
		HttpSession session = request.getSession();
		session.setAttribute("prenotazioni", prenotazioni);
		for(int i = 0 ; i<prenotazioni.length;i++) {
			for(int x = 0 ;x<prenotazioni[i].length;x++) {
				System.out.print(prenotazioni[i][x]);
			}
		System.out.println();
			}
		request.getRequestDispatcher("calendar_day.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	private Partita[][]  getAllPartiteByDate(String data){
	EntityManagerFactory	emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		EntityManager em = emf.createEntityManager();
		List<Partita> tutteLePariteDelGiorno = em.createQuery(
				"SELECT p FROM Partita p WHERE p.dataPartita ='"+data+"'",
				Partita.class).getResultList();
	    Partita[][] prenotazioni = new Partita[5][3];
	
		
		
			for(int i = 0 ; i<prenotazioni.length;i++) {
					for(Partita p : tutteLePariteDelGiorno) {
					if(p.getCampoPartita()==i+1) {
						switch(p.getOrarioPartita()) {
						case "mattina": prenotazioni[i][0]=p ;
						System.out.println("CASE1");
						break;
						case "pomeriggio": prenotazioni[i][1]=p;
						System.out.println("CASE2");
						break;
						case "sera": prenotazioni[i][2]=p;
						System.out.println("CASE3");
						break;
						
					}
					
				}
			}
		
		
		}
		return prenotazioni;
	}

}

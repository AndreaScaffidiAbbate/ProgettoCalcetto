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

/**
 * Servlet implementation class refresh_login
 */
@WebServlet("/refresh_login")
public class refresh_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public refresh_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
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
}

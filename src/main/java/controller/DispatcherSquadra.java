package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dispatcher_squadra")
public class DispatcherSquadra extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DispatcherSquadra() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("registrazionesquadra")) {
			request.getRequestDispatcher("/crea_squadra.jsp").forward(request, response);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("action") != null && request.getParameter("action").equals("registrazionesquadra")) {
			request.getServletContext().getRequestDispatcher("/GestioneSquadra").forward(request, response);
	}

}
}

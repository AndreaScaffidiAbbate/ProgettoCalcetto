package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dispatcher_registrazione")
public class DispatcherRegistrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DispatcherRegistrazione() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String action = request.getParameter("action");
	if(action != null && action.equals("registrazione")) {
		request.getServletContext().getRequestDispatcher("/registrazione.jsp").forward(request, response);
		
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	if(request.getParameter("action") != null && request.getParameter("action").equals("registrazione")) {
		request.getServletContext().getRequestDispatcher("/GestioneRegistrazione").include(request, response);
		doGet(request, response);
	}
	
	}

}

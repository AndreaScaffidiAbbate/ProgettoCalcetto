package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "gestione_calendario_utente", urlPatterns = "/GestioneCalendarioUtente")
public class GestioneCalendarioUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GestioneCalendarioUtente() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int s = Integer.parseInt(request.getParameter("ngiorno"));
	switch(s) {
	
	case 1:
		
		break;
	case 2:
		
		break;
	case 3:
		
		break;
	case 4:
		
		break;
	case 5:
		
		break;
	case 6:
		
		break;
	case 7:
		
		break;
		
	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

package controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "gestione_logout", urlPatterns = "/GestioneLogout")
public class GestioneLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GestioneLogout() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//request.getSession().invalidate();
	if(request.getParameter("action").equals("logout")) {
	request.getSession(false);
	response.sendRedirect("login.jsp");
	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

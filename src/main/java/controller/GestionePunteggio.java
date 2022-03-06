package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/GestionePunteggio")
public class GestionePunteggio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GestionePunteggio() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("action").equals("punti")) {
			
			request.getRequestDispatcher("home_admin.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("home_admin.jsp").forward(request, response);
		}
	}

}

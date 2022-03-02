package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dispatcher_login")
public class DispatcherLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DispatcherLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && action.equals("login")) {
			request.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("action") != null && request.getParameter("action").equals("login")) {
			request.getServletContext().getRequestDispatcher("/GestioneLogin").forward(request, response);
			
		}
		
		}
	}



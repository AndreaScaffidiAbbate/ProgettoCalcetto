package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DispatcherVittoria")
public class DispatcherVittoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DispatcherVittoria() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String draw = request.getParameter("draw").trim();
		String s1 = request.getParameter("s1").trim();
		String s2 = request.getParameter("s2").trim();
		HttpSession session = request.getSession();
		session.setAttribute("draw",draw);
		session.setAttribute("s1", s1);
		session.setAttribute("s2", s2);
		request.getRequestDispatcher("AssegnaVittoria").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}

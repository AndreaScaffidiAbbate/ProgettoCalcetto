package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Squadra;


@WebServlet(name = "gestione_admin", urlPatterns = "/GestioneAdmin")
public class GestioneAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EntityManagerFactory emf;
	private static EntityManager em;
	
   
    public GestioneAdmin() {
        super();
       
    }

    @Override
	public void init() throws ServletException {
		super.init();
		emf = Persistence.createEntityManagerFactory("WebAppCalcetto");
		em = emf.createEntityManager();
	}
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
}

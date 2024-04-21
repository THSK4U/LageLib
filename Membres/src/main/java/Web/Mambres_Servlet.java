package Web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Dao.MembreDao;
import Dao.MembreDaoImpl;
import Metier.Membre;

/**
 * Servlet implementation class Mambres_Servlet
 */
@WebServlet("/Mambres_Servlet")
public class Mambres_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private MembreDao  MebDAO;
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {

	}
	public Mambres_Servlet() 
	{         
		super();         
	    MebDAO = new MembreDaoImpl();     
	  }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("/WEB-INF/AfficherM.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * MembreDaoImpl roomDAOimp = new MembreDaoImpl();
		 * request.setAttribute("Membre", roomDAOimp.selectAllMembres());
		 * request.getRequestDispatcher("/WEB-INF/AfficherM.jsp").forward(request,
		 * response);
		 */
		
		List<Membre> Membres = MebDAO.selectAllMembres() ;
		request.setAttribute("Membre", Membres);
		 request.getRequestDispatcher("/WEB-INF/AfficherM.jsp").forward(request,response);
	}
	

}

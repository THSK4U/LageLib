package Web;


import java.io.IOException;
import java.util.List;

import Dao.MembreDao;
import Dao.MembreDaoImpl;
import Metier.Membre;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mambres_Servlet
 */
@WebServlet("/")
public class Mambres_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private MembreDao membreDao;

	
	    public Mambres_Servlet() {
	        this.membreDao = new MembreDaoImpl();
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	    		throws ServletException, IOException {
	    	process(request,response);
	    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//request.getRequestDispatcher("/WEB-INF/AfficherM.jsp").forward(request, response);
		process(request,response);

	}
	   private void process(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String action = request.getServletPath();
	        if (action == null) {
	            processRequest(request, response);
	        } else {
	            switch (action) {
	                case "/edit":
	          
	                    break;
	                case "/confirmation":
	                	
	                    break;
	                case "/delete":
	                	
	                    break;
	                case "/new":
	                	 processNew(request, response);
	                    break;
	                case "/update":
	                    
	                    break;
	                case "/save" :
	                	processSave(request, response);
	                	break;
	                default:
	                    processRequest(request, response);
	                    break;
	            }
	        }
	    }

	 private void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 List<Membre> membres = membreDao.selectAllMembres();
	        request.setAttribute("membres", membres);
		     request.getRequestDispatcher("/WEB-INF/AfficherM.jsp").forward(request, response) ;
	    }
	
     private void processNew(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
         RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/new.jsp");
         dispatcher.forward(request, response);
     }
     
       
     private void processSave(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {

         String nom_mb = request.getParameter("nom_mb");
         String ladresse = request.getParameter("ladresse");
         int numérotéléphone = Integer.parseInt(request.getParameter("numérotéléphone"));

         Membre Membr = new Membre(nom_mb, ladresse, numérotéléphone);
         
         MembreDaoImpl membreDaoImpl = new MembreDaoImpl();
		membreDaoImpl.save(Membr);
         response.sendRedirect(request.getContextPath() + "/");
    
         }
}

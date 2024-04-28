package web;

import java.io.IOException;
import java.util.List;

import dao.MembreDao;
import dao.MembreDaoImpl;
import metier.Membre;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Memberjhvh")
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        process(request,response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        
        switch (action) {
            case "/Member/new":
            	processNew(request, response);
                break;
            case "/Member/save" :
                processSave(request, response);
                break;
            case "Member/delete" :
            	processdelet(request, response);
            default:
                processRequest(request, response);
                break;
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Membre> membres = membreDao.selectAllMembres();
        request.setAttribute("membres", membres);
        request.getRequestDispatcher("/WEB-INF/membres/AfficherM.jsp").forward(request, response);
    }

    private void processNew(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/membres/AfficherM.jsp").forward(request, response);
    }

    private void processdelet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	int id = Integer.parseInt(request.getParameter("id"));
    	membreDao.deletMembre(id);
        request.getRequestDispatcher("/WEB-INF/membres/AfficherM.jsp").forward(request, response);
    }
    
    private void processSave(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom_mb = request.getParameter("nom_mb");
        String ladresse = request.getParameter("ladresse");
        int numérotéléphone = Integer.parseInt(request.getParameter("numérotéléphone"));

        Membre membr = new Membre(nom_mb, ladresse, numérotéléphone);
        
        membreDao.save(membr);
        response.sendRedirect(request.getContextPath() + "/Member");
    }
}

package web;

import java.io.IOException;
import java.util.List;

import dao.LivresDaoimpli;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.livers;

@WebServlet("/")
public class Lservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LivresDaoimpli livresDaoimpli;

    public Lservlet() {
        this.livresDaoimpli = new LivresDaoimpli();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        if (action == null) {
            processRequest(request, response);
        } else {
            switch (action) {
                case "/edit":
                    processEdit(request, response);
                    break;
                case "/confirmation":
                	Deletform(request, response);
                    break;
                case "/delete":
                	processDelete(request, response);
                    break;
                case "/new":
                    processNew(request, response);
                    break;
                case "/update":
                    processUpdate(request, response);
                    break;
                case "/save" :
                	processSave(request, response);
                default:
                    processRequest(request, response);
                    break;
            }
        }
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<livers> livres = livresDaoimpli.ALLlist();
        request.setAttribute("Livre", livres);
        request.getRequestDispatcher("/WEB-INF/livres.jsp").forward(request, response);
    }
    
    
    private void Deletform(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Formdelet.jsp");
        dispatcher.forward(request, response);
    }
    
    
    private void processDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        livresDaoimpli.deletLivres(id);
        response.sendRedirect(request.getContextPath() + "/");
    }

    private void processEdit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        livers livr = livresDaoimpli.getLivres(id);
        request.setAttribute("Livre", livr);
      request.getRequestDispatcher("/WEB-INF/edit.jsp").forward(request, response);

    }
    
      private void processNew(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/new.jsp");
        dispatcher.forward(request, response);
    }
    
      
    private void processSave(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String titre = request.getParameter("titre");
        String lauteur = request.getParameter("lauteur");
        int lannéepublication = Integer.parseInt(request.getParameter("lannéepublication"));

        livers livr = new livers(titre, lauteur, lannéepublication);
        
        livresDaoimpli.save(livr);
        response.sendRedirect(request.getContextPath() + "/");
   
        }
    

    
    private void processUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        String titre = request.getParameter("titre");
        String lauteur = request.getParameter("lauteur");
        int lannéepublication = Integer.parseInt(request.getParameter("lannéepublication"));

        livers livr = new livers(id, titre, lauteur, lannéepublication);
        livresDaoimpli.update(livr);

        response.sendRedirect(request.getContextPath() + "/");
    }
}

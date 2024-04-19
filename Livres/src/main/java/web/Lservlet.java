package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ILiverdao;
import dao.LivresDaoimpli;
import metier.livers;

public class Lservlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ILiverdao metier;

    @Override
    public void init() throws ServletException {
        metier = new LivresDaoimpli();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        List<livers> list = metier.ALLlist();

        request.setAttribute("list", list);

        RequestDispatcher dispatcher = request.getRequestDispatcher("Livres-list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_livre = Integer.parseInt(request.getParameter("id"));
        String titre = request.getParameter("title");
        String lauteur = request.getParameter("author");
        int lannéepublication = Integer.parseInt(request.getParameter("publicationYear"));

        livers livre = new livers(id_livre, titre, lauteur, lannéepublication);

        metier.update(livre);

        response.sendRedirect(request.getContextPath() + "/Lservlet");
    }
}

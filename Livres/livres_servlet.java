package Web;

import java.io.IOException;

import dao.LiverDaoImpl;
import dao.LivreDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class livres_servlet extends HttpServlet {
    private LivreDao metier;

    @Override
    public void init() throws ServletException {
        metier=new LiverDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("AddBook.jsp").forward(req, resp);
    }
    
}
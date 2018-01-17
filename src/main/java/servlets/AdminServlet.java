package servlets;

import domain.News;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/adm")

public class AdminServlet extends HttpServlet {
    private News news;

    public AdminServlet() {
        news = new News();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("pages/adminpage.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        doFilter(req, resp);
        String text = req.getParameter("message");
        String headerText = req.getParameter("header");
        boolean submitButtonPressed = req.getParameter("submit") != null;
        if (submitButtonPressed) {
            try {
                news.addNews(text, headerText);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        out.print("News was added");
    }

    public void doFilter(ServletRequest request, ServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


    }
}

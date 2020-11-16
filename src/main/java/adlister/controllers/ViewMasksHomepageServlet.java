package adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MasksHomepageServlet", urlPatterns = "/masks")
public class ViewMasksHomepageServlet extends HttpServlet {
         protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/masks.jsp").forward(request, response);
        }
}

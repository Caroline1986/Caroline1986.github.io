package adlister.controllers;

import adlister.models.User;
import adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        HttpSession session = request.getSession();
        String errorMessage = (String) session.getAttribute("registerError");
        if(errorMessage != null) {
            request.setAttribute("registerError", errorMessage);
            session.removeAttribute("registerError");//removes error message after session
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

//         validate input
        boolean inputHasErrors = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            request.getSession().setAttribute("registerError", "There is a registration error");
            response.sendRedirect("/register");
            return;
        }
        boolean pwConfirmationEmpty = !password.equals(passwordConfirmation);
        boolean passwordEmpty = password.isEmpty();
        boolean emailEmpty = email.isEmpty();
        boolean usernameEmpty = username.isEmpty();

        if (usernameEmpty) {
            request.getSession().setAttribute("usernameError", "Enter a username");

        } else if (emailEmpty) {
            request.getSession().setAttribute("emailError", "Enter an email");

        } else if (passwordEmpty) {
            request.getSession().setAttribute("passwordError", "Enter a password");

        } else if (pwConfirmationEmpty) {
            request.getSession().setAttribute("confirmationError", "Passwords do not match");
            response.sendRedirect("/register");
            return;


        }

        // create and save a new user
        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}


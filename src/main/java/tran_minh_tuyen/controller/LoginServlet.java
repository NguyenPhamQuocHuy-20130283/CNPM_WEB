package tran_minh_tuyen.controller;

import tran_minh_tuyen.properties.FacebookProperties;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("clientIdFb", FacebookProperties.FACEBOOK_CLIENT_ID());
        request.setAttribute("redirectUrlFb", FacebookProperties.FACEBOOK_REDIRECT_URL());
        request.getRequestDispatcher("/client/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

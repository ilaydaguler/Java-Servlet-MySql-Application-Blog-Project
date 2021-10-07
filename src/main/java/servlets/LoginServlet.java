package servlets;

import utils.DBUtil;
import utils.Util;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "loginServlet" , value = "/login-servlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email =req.getParameter("email");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");
        System.out.println("remember :"+remember);


        DBUtil util = new DBUtil();
        boolean status = util.login(email,password,remember,req,resp);
        if(status){

            resp.sendRedirect(Util.base_url+ "dashboard.jsp");
        }else{

            req.setAttribute("loginError","Kullanıcı adı veya şifre hatalı");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/");
            dispatcher.forward(req,resp);
        }
    }

}


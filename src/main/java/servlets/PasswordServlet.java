package servlets;

import utils.DBUtil;
import utils.Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "passwordServlet" ,value = "/password-change")
public class PasswordServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


            String password = req.getParameter("password");
            String password1 = req.getParameter("password1");
            int id = (int) req.getSession().getAttribute("id");

            DBUtil util = new DBUtil();
            int status=util.passwordUpdate(password,password1,id);
            if (status>0){
                resp.sendRedirect(Util.base_url+"dashboard.jsp");
            }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(Util.base_url+"password.jsp");

    }
}

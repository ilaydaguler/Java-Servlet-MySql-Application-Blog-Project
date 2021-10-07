package servlets;

import props.Posts;
import utils.DB;
import utils.DBUtil;
import utils.Util;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "postUpdateServlet",value = "/post-update")
public class PostUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int pid = Integer.parseInt(req.getParameter("pid"));
        req.getSession().setAttribute("updatePid",pid);
        DBUtil util = new DBUtil();
        Posts posts = util.singlePost(pid);

        req.setAttribute("posts" , posts);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher( "/post_update.jsp");
        dispatcher.forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        boolean pidStatus=req.getSession().getAttribute("updatePid") != null;
        if (pidStatus){
            String title = req.getParameter("title");
            String explanation = req.getParameter("explanation");
            String detail = req.getParameter("detail");
            int pid = (int) req.getSession().getAttribute("updatePid");

            DBUtil util = new DBUtil();
            int status=util.postUpdate(title,explanation,detail,pid);
            req.getSession().removeAttribute("updatePid");

        }

        resp.sendRedirect(Util.base_url+"dashboard.jsp");

    }
}

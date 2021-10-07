package servlets;

import props.Posts;
import utils.DBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "detailServlet",value = "/detail-servlet")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pid = Integer.parseInt(req.getParameter("pid"));
        req.getSession().setAttribute("detailPid",pid);
        DBUtil util = new DBUtil();
        Posts posts = util.singlePost(pid);

        req.setAttribute("posts" , posts);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher( "/post.jsp");
        dispatcher.forward(req,resp);

    }
}

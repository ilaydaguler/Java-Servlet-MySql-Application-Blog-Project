package servlets;

import props.Posts;
import utils.DBUtil;
import utils.Util;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PostServlet" ,value = "/post-insert")
public class PostServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String title = req.getParameter("title");
        String explanation = req.getParameter("explanation");
        String detail = req.getParameter("detail");

        Posts post = new Posts();

        post.setTitle(title);
        post.setExplanation(explanation);
        post.setDetail(detail);

        int id =(int) req.getSession().getAttribute("id");

        DBUtil util = new DBUtil();
        int status = util.postInsert(post,id);
        if(status>0){
            resp.sendRedirect(Util.base_url+"dashboard.jsp");
        }else{
            String errorMessage ="";
            if(status == 0){
                errorMessage = "Ekleme sırasında bir hata oluştu";
            }
            if(status == -1){
                errorMessage ="Bu post başlığı daha önce kullanılmış";
            }
            req.setAttribute("insertError",errorMessage);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/dashboard.jsp");
            dispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pid = req.getParameter("pid"); //kullanıcıdan alınan sil butonu seçilir,seçilen pid gelir
        String ipAddress = req.getParameter("X-FORWARDED-FOR");
        if (ipAddress==null){
            ipAddress=req.getRemoteAddr();
        }
        try {
            int ppid = Integer.parseInt(pid);
            int id =(int) req.getSession().getAttribute("id");
            DBUtil util = new DBUtil();
            if (util.isPostValid(ppid,id)){
                int status = util.postDelete(ppid);
                if (status>0){ }
            }
        }catch (NumberFormatException e){
            System.err.println("delete item error" + e);
        }

        resp.sendRedirect(Util.base_url+"/dashboard.jsp");

    }
}


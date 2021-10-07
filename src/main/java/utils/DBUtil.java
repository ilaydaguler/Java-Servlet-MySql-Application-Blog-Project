package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javafx.geometry.Pos;
import props.Contact;
import props.Posts;

public class DBUtil {

    //kullanıcıdan gelen bilgileri yakalama kontrol etme
    public boolean login( String email, String password,String remember, HttpServletRequest req, HttpServletResponse resp){
        boolean status = false;
        DB db = new DB();
        try {
            String sql = "select * from admin where email =? and password= ?";
            PreparedStatement pre =db.conn.prepareStatement(sql);
            pre.setString(1,email);
            pre.setString(2, Util.MD5(password));
            ResultSet rs = pre.executeQuery();
            status = rs.next();

            //session oluşturma kısmı
            if(status){

                int id = rs.getInt("id");
                String name_surname = rs.getString("name_surname");
                //session tetiklenmese bile içi boş şekilde arkada oluşturulur
                req.getSession().setAttribute("id", id); //session id elemanı üzerinden yapılmalı
                req.getSession().setAttribute("name_surname",name_surname);
                //cookie create
                if(remember != null && remember.equals("on")){
                    name_surname = name_surname.replaceAll(" ","_");
                    String val = id+"_"+name_surname;
                    Cookie cookie = new Cookie("user",val);
                    cookie.setMaxAge(60*60);
                    resp.addCookie(cookie);
                }



            }

        }catch (Exception ex){
            System.err.println("Login Error: " + ex);

        }finally {
            db.close();
        }



        return status;
    }

    //post insert
    //data geleceği zaman Product proptan bilgi gelsin
    public int postInsert(Posts p, int id){
        int status = 0;
        DB db = new DB();
        try{

            String sql ="insert into post values(null,?,?,?,?)";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setString(1,p.getTitle());
            pre.setString(2,p.getExplanation());
            pre.setString(3,p.getDetail());
            pre.setInt(4,id);
            status = pre.executeUpdate();
        }catch (Exception e){
            System.err.println("Post Insert error" + e);
            if(e.toString().contains("SQLIntegrityConstraintViolationException")){
                status =-1;
            }

        }finally {
            db.close();

        }
        return status;
    }

    //all product result
    public List<Posts> allPosts(int id){
        List<Posts> ls = new ArrayList<>();
        DB db = new DB();
        try{
            String sql = "select * from post where id = ?";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setInt(1,id);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                int pid = rs.getInt("pid");
                String title =rs.getString("title");
                String explanation = rs.getString("explanation");
                String detail = rs.getString("detail");


                Posts ps = new Posts(pid,title,explanation,detail); //product içindeki constructore gider
                ls.add(ps); //listeyi doldurduk
            }

        }catch (Exception e){
            System.err.println("allPosts Error: " + e);

        }finally {
            db.close();
        }
        return ls;

    }

    //product item single delete
    public int postDelete(int pid){
        int status = 0;
        DB db = new DB();
        try{
            String sql ="delete from post where pid=?";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setInt(1,pid);
            status = pre.executeUpdate();


        }catch (Exception e){
            System.err.println("postDelete: " + e);
        }finally {
            db.close();
        }
        return status;
    }

    //product valid
    public boolean isPostValid(int pid,int id){
        boolean status = false;
        DB db = new DB();
        try{
            String sql = "select * from post where pid = ? and id = ?";
            PreparedStatement pre =db.conn.prepareStatement(sql);
            pre.setInt(1,pid);
            pre.setInt(2,id);
            ResultSet rs = pre.executeQuery();
            status=rs.next();
        }catch (Exception e){
            System.err.println("isPostValid" + e);
        }finally {
            db.close();
        }
        return status;
    }

    public Posts singlePost(int pid){
        Posts ps = new Posts();
        DB db = new DB();

        try {
            String sql = "select * from post where pid = ?";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setInt(1,pid);
            ResultSet rs = pre.executeQuery();
            if (rs.next()){
                int pidx = rs.getInt("pid");
                String title =rs.getString("title");
                String explanation =rs.getString("explanation");
                String detail = rs.getString("detail");


                ps =new Posts(pidx,title,explanation,detail);
                return ps;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.close();
        }
        return ps;
    }

    public int postUpdate(String title, String explanation, String detail,int pid){
        int status=0;
        DB db = new DB();

        try {
            String sql =" update post set title = ? , explanation = ?, detail = ? where pid = ?";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setString(1,title);
            pre.setString(2,explanation);
            pre.setString(3,detail);
            pre.setInt(4,pid);
            status = pre.executeUpdate();

        } catch (Exception e) {
            System.err.println("Post Update error" + e);
            if(e.toString().contains("SQLIntegrityConstraintViolationException")){
                status =-1;
            }
        } finally {
        }
        return  status;
    }
    public int passwordUpdate(String oldPassword, String newPassword,int id){
        int status=0;
        DB db = new DB();

        try {
            String sql = " update admin set password = ? where password = ? and id = ? ";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setString(1, Util.MD5(newPassword));
            pre.setString(2, Util.MD5(oldPassword));
            pre.setInt(3,id);
            status = pre.executeUpdate();

        } catch (Exception e) {
            System.err.println("passwordUpdate Error : " + e);
        }
        return status;
    }

    public List<Posts> allPost(){
        List<Posts> ls = new ArrayList<>();
        DB db = new DB();
        try{
            String sql = "select * from post ";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                int pid = rs.getInt("pid");
                String title =rs.getString("title");
                String explanation = rs.getString("explanation");
                String detail = rs.getString("detail");
                Posts ps = new Posts(pid,title,explanation,detail); //product içindeki constructore gider
                ls.add(ps); //listeyi doldurduk
            }

        }catch (Exception e){
            System.err.println("allPost Error: " + e);

        }finally {
            db.close();
        }
        return ls;

    }

    public int contactInsert(Contact c){
        int status = 0;
        DB db = new DB();
        try{

            String sql ="insert into contact values(null,?,?,?,?)";
            PreparedStatement pre = db.conn.prepareStatement(sql);
            pre.setString(1,c.getName());
            pre.setString(2,c.getEmail());
            pre.setString(3,c.getPhone());
            pre.setString(4, c.getMessage());
            status = pre.executeUpdate();
        }catch (Exception e){
            System.err.println("Contact Insert error" + e);
            if(e.toString().contains("SQLIntegrityConstraintViolationException")){
                status =-1;
            }

        }finally {
            db.close();

        }
        return status;
    }


}
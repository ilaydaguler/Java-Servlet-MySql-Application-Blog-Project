package config;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Enumeration;

@WebFilter("/*")
public class FilterServlet implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("doFilter call");

        HttpServletRequest req=(HttpServletRequest) servletRequest;
        HttpServletResponse resp =(HttpServletResponse) servletResponse;

        String ip =req.getRemoteAddr();
        if (ip.equalsIgnoreCase("0:0:0:0:0:0:0:1")){
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ipAddress = inetAddress.getHostAddress();
            ip=ipAddress;
        }
        req.setAttribute("ip",ip);
        Enumeration<String> enumeration= req.getHeaderNames();
        while (enumeration.hasMoreElements()){
            String stEnum = enumeration.nextElement();
            String item =req.getHeader(stEnum);
            System.out.println(stEnum+":"+item);
        }
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        //tasarımları yakalayıp gözükmesini sağlar!!
        filterChain.doFilter(servletRequest,servletResponse);

        //listener interfacedır kullanıcı hareketlerini dinler buradakiler yazılımı dinler
    }

    @Override
    public void destroy() {

    }
}

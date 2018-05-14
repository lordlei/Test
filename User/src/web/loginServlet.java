package web;

import Bean.Admin;
import Utils.C3P0Utils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request ,response);

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


        String username = request.getParameter("username");
        String password = request.getParameter("password");
        QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
        String sql="select * from admin where ausername=? and apassword=?";
        Admin query=null;
        try {
            query = qr.query(sql, new BeanHandler<Admin>(Admin.class), username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(query!=null){
            response.sendRedirect(request.getContextPath()+"/mainServlet");
            request.getSession().setAttribute("name",username);
        }else{
            request.setAttribute("name1","用户或密码错误");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }


    }
}

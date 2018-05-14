package web;

import Bean.User;
import DAO.daoImpl.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectUserServlet")
public class selectUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        UserDaoImp userDaoImp = new UserDaoImp();
        if(username==null){
            List<User> userByName = userDaoImp.findUserByName(username);
            request.setAttribute("allUser", userByName);
            request.getRequestDispatcher("main.jsp").forward(request, response);
        }else {
            List<User> userByName = userDaoImp.findUserByName(username);
            request.setAttribute("allUser", userByName);
            request.getRequestDispatcher("main.jsp").forward(request, response);
        }


    }
}

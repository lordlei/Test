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

@WebServlet("/mainServlet")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDaoImp userDaoImp = new UserDaoImp();
        List<User> allUser = userDaoImp.findAllUser();


        request.setAttribute("allUser",allUser);
        request.getRequestDispatcher("main.jsp").forward(request,response);



    }
}

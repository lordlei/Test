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

@WebServlet("/deleteUserServlet")
public class deleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] checks = request.getParameterValues("check");
        UserDaoImp userDaoImp = new UserDaoImp();


        if(checks!=null) {
            for (String id : checks) {
                userDaoImp.deleteUser(Integer.parseInt(id));
            }
            List<User> allUser = userDaoImp.findAllUser();
            request.setAttribute("allUser", allUser);
            request.getRequestDispatcher("main.jsp").forward(request, response);
        }else{
            List<User> allUser = userDaoImp.findAllUser();
            request.setAttribute("allUser", allUser);
            request.getRequestDispatcher("main.jsp").forward(request, response);

        }

    }
}

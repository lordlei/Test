package web;

import Bean.User;
import DAO.daoImpl.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updataUserServlet")
public class updataUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");
        request.getSession().setAttribute("uids",uid);
        UserDaoImp userDaoImp = new UserDaoImp();
        User user = userDaoImp.findUserById(Integer.parseInt(uid));
        request.setAttribute("usertrue",user);
        request.getRequestDispatcher("updata.jsp").forward(request,response);

    }
}

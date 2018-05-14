package web;

import Bean.User;
import DAO.UserDao;
import DAO.daoImpl.UserDaoImp;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

@WebServlet("/updataUserServlet2")
public class updataUserServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user,parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        String uids = (String) request.getSession().getAttribute("uids");
        user.setUid(Integer.parseInt(uids));
        UserDaoImp userDaoImp = new UserDaoImp();
        userDaoImp.updateUser(user);
        List<User> allUser = userDaoImp.findAllUser();
        request.setAttribute("allUser",allUser);
        request.getRequestDispatcher("main.jsp").forward(request,response);


    }
}

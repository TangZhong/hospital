package servlet;

import dao.DoctorDao;
import entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 医生登录
 *
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String pwd = req.getParameter("pwd");

        DoctorDao doctorDao = new DoctorDao();
        Doctor doctor = doctorDao.login(account,pwd);

        if(doctor != null){
            req.getSession().setAttribute("doctor",doctor);
            req.getRequestDispatcher("doctor/kanzhen.jsp").forward(req,resp);
        } else {
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

    }

}

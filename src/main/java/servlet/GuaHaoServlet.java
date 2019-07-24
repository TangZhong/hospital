package servlet;

import entity.Patient;
import entity.Register;
import service.GuaHaoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

public class GuaHaoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取提交参数
        Integer caseCode = Integer.parseInt(req.getParameter("caseCode"));

//        Date diagnoseTime = req.getParameter("diagnoseTime");

        String diagnosePeriod = req.getParameter("diagnosePeriod");

        String status = req.getParameter("status");

        Integer clinicId = Integer.parseInt(req.getParameter("clinicId"));

        Integer doctorId = Integer.parseInt(req.getParameter("doctorId"));

        Integer registerCategoryId = Integer.parseInt(req.getParameter("registerCategoryId"));

        //构造entity对象
        Register register = new Register();
        register.setCaseCode(caseCode);
        register.setDiagnosePeriod(diagnosePeriod);
        register.setStatus(status);
        register.setClinicId(clinicId);
        register.setDoctorId(doctorId);
        register.setRegisterCategoryId(registerCategoryId);

        String name = req.getParameter("name");

        String sex = req.getParameter("sex");

        String idCard = req.getParameter("idCard");

//        Date birthday = req.getParameter("idCard");

        Integer age = Integer.parseInt(req.getParameter("age"));

        String ageType = req.getParameter("ageType");

        //构造entity对象
        Patient patient = new Patient();
        patient.setName(name);
        patient.setSex(sex);
        patient.setIdCard(idCard);
        patient.setAge(age);
        patient.setAgeType(ageType);

        GuaHaoService service = new GuaHaoService();
        boolean result = service.guahao(register,patient);

        req.setAttribute("result",result);
        req.getRequestDispatcher("guahao.jsp").forward(req,resp);

    }
}

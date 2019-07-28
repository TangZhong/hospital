package servlet;

import entity.Doctor;
import entity.Prescription;
import entity.PrescriptionDetail;
import service.KaiYaoService;
import service.KanZhenService;
import vo.KaiYaoPatientVo;
import vo.KanZhenPatientVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * get请求1：列出所有该医生待诊和未诊的病人
 *    请求2：列出选中病人的诊断结果
 * post请求：添加开药信息
 */

public class KaiYaoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer doctorId = ((Doctor) req.getSession().getAttribute("doctor")).getId();

        KaiYaoService kaiYaoService = new KaiYaoService();
        List<KaiYaoPatientVo> kaiYaoPatientVoList = kaiYaoService.listKaiyaoPatients(doctorId);

        req.setAttribute("list",kaiYaoPatientVoList);

        req.getRequestDispatcher("doctor/kaiyao.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String [] drugStrArray = req.getParameterValues("drug");

        List<PrescriptionDetail> pdList = new ArrayList<PrescriptionDetail>();

        for(String drugStr : drugStrArray){

            PrescriptionDetail pd = new PrescriptionDetail();


            pdList.add(pd);
        }

        KaiYaoService kaiYaoService = new KaiYaoService();
        boolean success = kaiYaoService.savePrescriptionDetail(pdList);

        if(success){
            req.getRequestDispatcher("kaiyao.jsp").forward(req,resp);
        }
    }
}

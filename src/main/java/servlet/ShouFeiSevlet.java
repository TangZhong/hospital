package servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import dao.PatientDao;
import entity.Patient;
import entity.PayDetail;
import entity.PrescriptionDetail;
import service.KaiYaoService;
import service.ShouFeiService;
import vo.ShouFeiVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * get请求 - 根据病历号查询开药明细
 * post请求 - 保存缴费信息
 */

public class ShouFeiSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer caseCode = Integer.parseInt(req.getParameter("caseCode"));

        //药品明细
        ShouFeiService shouFeiService = new ShouFeiService();
        List<ShouFeiVo> shouFeiVoList = shouFeiService.listPayDetail(caseCode);
        req.setAttribute("list",shouFeiVoList);

        //病人明细
        PatientDao patientDao = new PatientDao();
        Patient patient = patientDao.queryByCaseCode(caseCode);
        req.setAttribute("patient",patient);

        req.getRequestDispatcher("shoufei.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        StringBuffer json = new StringBuffer();
        String line = null;
        BufferedReader reader = null;
        try {
            reader = req.getReader();
            while((line = reader.readLine()) != null) {
                json.append(line);
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        }finally {
            if(reader != null)
                reader.close();
        }


        JSONObject jsonObject = JSON.parseObject(json.toString());
        PayDetail payDetail = new PayDetail();
        payDetail.setCase_code(jsonObject.getInteger("case_code"));
        payDetail.setPrice1(jsonObject.getString("price1"));//应收金额
        payDetail.setPrice2(jsonObject.getString("price2"));//实收金额
        payDetail.setPrice3(jsonObject.getString("price3"));//找零金额

        ShouFeiService shouFeiService = new ShouFeiService();
        boolean success = shouFeiService.savePayDetail(payDetail);

        PrintWriter out = resp.getWriter();
        out.print(success);
        out.flush();
        out.close();

    }
}

package servlet;

import entity.PayDetail;
import entity.PrescriptionDetail;
import service.KaiYaoService;
import service.ShouFeiService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

        ShouFeiService shouFeiService = new ShouFeiService();
        List<PayDetail> payDetailList = shouFeiService.listPayDetail(caseCode);

        req.setAttribute("payDetailList",payDetailList);

        req.getRequestDispatcher("shoufei.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String [] payStrArray = req.getParameterValues("pay");

        List<PayDetail> pdList = new ArrayList<PayDetail>();

        for(String payStr : payStrArray){

            PayDetail pd = new PayDetail();


            pdList.add(pd);
        }

        ShouFeiService shouFeiService = new ShouFeiService();
        boolean success = shouFeiService.savePayDetail(pdList);

        if(success){
            req.getRequestDispatcher("shoufei.jsp").forward(req,resp);
        }

    }
}

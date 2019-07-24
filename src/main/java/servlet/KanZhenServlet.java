package servlet;

import entity.Case;
import entity.Doctor;
import service.KanZhenService;
import vo.KanZhenPatientVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * get请求：列出所有该医生待诊和未诊的病人
 * post请求：保存看诊结果
 */

public class KanZhenServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer doctorId = ((Doctor) req.getSession().getAttribute("doctor")).getId();

        KanZhenService kanZhenService = new KanZhenService();
        List<KanZhenPatientVo> kanZhenPatientVoList = kanZhenService.listKanzhenPatients(doctorId);

        req.setAttribute("list",kanZhenPatientVoList);

        req.getRequestDispatcher("kanzhen.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取页面提交数据
        Integer case_code = Integer.parseInt(req.getParameter("case_code"));
        String zhushu = req.getParameter("zhushu");
        String xianbingshi = req.getParameter("xianbingshi");
        String xianbingzhiliao = req.getParameter("xianbingzhiliao");
        String jiwangshi = req.getParameter("jiwangshi");
        String guominshi = req.getParameter("guominshi");
        String tigejiancha = req.getParameter("tigejiancha");
        String jianchajianyi = req.getParameter("jianchajianyi");
        String warning = req.getParameter("warning");
        String result = req.getParameter("result");
//        Integer registerId = Integer.parseInt(req.getParameter("registerId"));

        Case caseEntity = new Case();
        caseEntity.setCase_code(case_code);
        caseEntity.setZhushu(zhushu);
        caseEntity.setXianbingshi(xianbingshi);
        caseEntity.setXianbingzhiliao(xianbingzhiliao);
        caseEntity.setJiwangshi(jiwangshi);
        caseEntity.setGuominshi(guominshi);
        caseEntity.setTigejiancha(tigejiancha);
        caseEntity.setJianchajianyi(jianchajianyi);
        caseEntity.setWarning(warning);
        caseEntity.setResult(result);

        //调用服务
        KanZhenService kanZhenService = new KanZhenService();
        boolean success = kanZhenService.save(caseEntity);

        //页面跳转 & 数据绑定
        req.setAttribute("success",success);
        req.getRequestDispatcher("kanzhen.jsp").forward(req,resp);

    }
}

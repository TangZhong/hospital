package servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import dao.RegisterDao;
import entity.Case;
import entity.Doctor;
import entity.Register;
import service.KanZhenService;
import vo.KanZhenPatientVo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
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

        req.setAttribute("patientList",kanZhenPatientVoList);

        req.getRequestDispatcher("doctor/kanzhen.jsp").forward(req,resp);

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

        //获取页面提交数据
        Integer case_code = jsonObject.getInteger("case_code");
        String zhushu = jsonObject.getString("zhushu");
        String xianbingshi = jsonObject.getString("xianbingshi");
        String xianbingzhiliao = jsonObject.getString("xianbingzhiliao");
        String jiwangshi = jsonObject.getString("jiwangshi");
        String guominshi = jsonObject.getString("guominshi");
        String tigejiancha = jsonObject.getString("tigejiancha");
        String jianchajianyi = jsonObject.getString("jianchajianyi");
        String warning = jsonObject.getString("warning");
        String result = jsonObject.getString("result");
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

        //调用服务 - 保存看诊信息
        KanZhenService kanZhenService = new KanZhenService();
        boolean success = kanZhenService.save(caseEntity);

        //调用服务 - 更新看诊状态
        Register register = new Register();
        register.setCaseCode(case_code);
        RegisterDao registerDao = new RegisterDao();
        registerDao.update(register);

        //页面跳转 & 数据绑定
        PrintWriter out = resp.getWriter();
        out.print(success);
        out.flush();
        out.close();

    }
}

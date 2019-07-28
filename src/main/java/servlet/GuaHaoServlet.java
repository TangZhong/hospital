package servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import dao.PatientDao;
import entity.Patient;
import entity.Register;
import org.apache.commons.lang3.StringUtils;
import service.GuaHaoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

/**
 * get请求 - 查询病历号关联的病人信息
 * post请求 - 保存挂号信息
 */

public class GuaHaoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String caseCode = req.getParameter("caseCode");
        PatientDao patientDao = new PatientDao();
        Patient patient = patientDao.queryByCaseCode(Integer.valueOf(caseCode));

        resp.setContentType("text/json; charset=utf-8");
        PrintWriter out = resp.getWriter();
        if(patient == null)
            out.print(new JSONObject());
        else
            out.print(JSON.parseObject(JSON.toJSONString(patient)));

        out.flush();
        out.close();
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

        HashMap<String,String> param = JSON.parseObject(json.toString(), HashMap.class);

        //获取提交参数
        //构造entity对象
        Register register = new Register();

        if(param.get("diagnoseTime") != null){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                register.setDiagnoseTime(sdf.parse((String) param.get("diagnoseTime")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        register.setCaseCode(Integer.valueOf(param.get("caseCode").toString()));
        register.setDiagnosePeriod(String.valueOf(param.get("diagnosePeriod")));
        register.setStatus("1");//1-未诊断  2-诊断
        register.setClinicId(String.valueOf(param.get("clinicId")));
        register.setDoctorId(String.valueOf(param.get("doctorId")));
        register.setRegisterCategoryId(String.valueOf(param.get("registerCategoryId")));

        //构造entity对象
        Patient patient = new Patient();

        if(StringUtils.isNotEmpty(param.get("birthday"))){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                patient.setBirthday(sdf.parse(String.valueOf(param.get("birthday"))));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }

        if(StringUtils.isNotEmpty(param.get("age"))){
            Integer age = Integer.valueOf(param.get("age"));
            patient.setAge(age);
        }

        patient.setName(String.valueOf(param.get("name")));
        patient.setSex(String.valueOf(param.get("sex")));
        patient.setIdCard(String.valueOf(param.get("idCard")));
        patient.setAgeType(String.valueOf(param.get("ageType")));

        GuaHaoService service = new GuaHaoService();
        boolean result = service.guahao(register,patient);

        PrintWriter out = resp.getWriter();
        out.print(result);
        out.flush();
        out.close();

    }
}

package service;

import dao.PatientDao;
import dao.RegisterDao;
import entity.Patient;
import entity.Register;

public class GuaHaoService{

    public boolean guahao(Register register, Patient patient){


        if(isFirstGuahao(register.getCaseCode())){//首次挂号需要持久化patient
            PatientDao patientDao = new PatientDao();
            patientDao.save(patient);
        }

        //持久化挂号信息
        RegisterDao registerDao = new RegisterDao();
        boolean success = registerDao.save(register);

        return success;
    }

    /**
     * 判断是否是首次挂号:病历号不存在表示是首次挂号
     *
     */
    private boolean isFirstGuahao(Integer caseCode){
        PatientDao patientDao = new PatientDao();
        return patientDao.existCaseCode(caseCode);
    }

}
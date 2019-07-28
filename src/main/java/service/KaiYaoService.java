package service;

import dao.RegisterDao;
import entity.PrescriptionDetail;
import vo.KaiYaoPatientVo;

import java.util.List;

public class KaiYaoService {

    public List<KaiYaoPatientVo> listKaiyaoPatients(Integer doctorId){

        RegisterDao registerDao = new RegisterDao();
        return registerDao.listKaiyao(doctorId);
    }

    public boolean savePrescriptionDetail(List<PrescriptionDetail> pdList){

        return false;
    }

}

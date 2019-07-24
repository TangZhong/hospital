package service;

import dao.CaseDao;
import dao.RegisterDao;
import entity.Case;
import vo.KanZhenPatientVo;

import java.util.List;

public class KanZhenService {

    public List<KanZhenPatientVo> listKanzhenPatients(Integer doctorId){

        RegisterDao registerDao = new RegisterDao();
        return registerDao.list(doctorId);
    }

    public boolean save(Case caseEntity){

        CaseDao caseDao = new CaseDao();

        return caseDao.save(caseEntity);
    }

}

package service;

import dao.PayDao;
import dao.ShoufeiDao;
import entity.PayDetail;
import vo.ShouFeiVo;

import java.util.List;

public class ShouFeiService {

    public List<ShouFeiVo> listPayDetail(Integer caseCode){

        ShoufeiDao shoufeiDao = new ShoufeiDao();
        return shoufeiDao.listShoufei(caseCode);

    }

    public boolean savePayDetail(PayDetail payDetail){

        PayDao payDao = new PayDao();
        payDao.save(payDetail);

        return false;
    }

}

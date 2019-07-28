package dao;

import utils.DbUtil;
import vo.ShouFeiVo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShoufeiDao {

    public List<ShouFeiVo> listShoufei(Integer caseCode){

        List<ShouFeiVo> result = new ArrayList();
        ShouFeiVo g = null;

        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select p.case_code,b.name as patient_name,b.age,p.name as pres,d.name as drug_name,d.price as drug_price,pd.drug_amount from patient b,prescription p,prescription_drug_detail pd,meta_drug d where p.case_code = ? and p.id = pd.prescription_id and pd.drug_id = d.id";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,caseCode);

            //执行
            rs = ptmt.executeQuery();
            while (rs.next()) {
                g = new ShouFeiVo();
                g.setCaseCode(rs.getString("case_code"));
                g.setName(rs.getString("patient_name"));
                g.setDrugName(rs.getString("drug_name"));
                g.setDrugPrice(rs.getString("drug_price"));
                g.setDrugAmount(rs.getString("drug_amount"));
                result.add(g);
            }
            return result;
        }catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }finally {
            DbUtil.close(rs,ptmt,conn);
        }
    }


}

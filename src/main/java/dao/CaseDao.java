package dao;

import entity.Case;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CaseDao {

    public boolean save(Case caseEntity){

        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql
            String sql = "INSERT INTO `case`(code,zhushu,xianbingshi,xianbingzhiliao,jiwangshi,guominshi,tigejiancha,jianchajianyi,warning) VALUES(?,?,?,?,?,?,?,?,?)";
            //预编译
            ptmt = conn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, caseEntity.getCase_code());
            ptmt.setString(2, caseEntity.getZhushu());
            ptmt.setString(3, caseEntity.getXianbingshi());
            ptmt.setString(4, caseEntity.getXianbingzhiliao());
            ptmt.setString(5, caseEntity.getJiwangshi());
            ptmt.setString(6, caseEntity.getGuominshi());
            ptmt.setString(7, caseEntity.getTigejiancha());
            ptmt.setString(8, caseEntity.getJianchajianyi());
            ptmt.setString(9, caseEntity.getWarning());

            //执行
            ptmt.execute();
        } catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            DbUtil.close(ptmt,conn);
        }

        return true;

    }

}

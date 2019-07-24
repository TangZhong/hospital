package dao;

import entity.Patient;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PatientDao {

    public boolean save(Patient patient){

        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql
            String sql = "INSERT INTO patient(case_code,name,sex,id_card,birthday,age,age_type) VALUES(?,?,?,?,?,?,?)";
            //预编译
            ptmt = conn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, patient.getCaseCode());
            ptmt.setString(2, patient.getName());
            ptmt.setString(3, patient.getSex());
            ptmt.setString(4, patient.getIdCard());
            ptmt.setDate(5, (Date) patient.getBirthday());
            ptmt.setInt(6, patient.getAge());
            ptmt.setString(7, patient.getAgeType());

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

    public boolean existCaseCode(Integer caseCode){

        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select * from patient where caseCode = ?";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,caseCode);

            //执行
            rs = ptmt.executeQuery();
            while (rs.next()) {
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }finally {
            DbUtil.close(rs,ptmt,conn);
        }

        return false;
    }
}

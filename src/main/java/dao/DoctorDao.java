package dao;

import entity.Doctor;
import entity.Patient;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DoctorDao {

    public Doctor login(String account, String pwd){

        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;
        Doctor doctor = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select * from doctor where account = ? and pwd = ?";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1,account);
            ptmt.setString(2,pwd);

            //执行
            rs = ptmt.executeQuery();

            while (rs.next()) {
                doctor = new Doctor();
                doctor.setId(rs.getInt("id"));
                doctor.setName(rs.getString("name"));
            }
        }catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }finally {
            DbUtil.close(rs,ptmt,conn);
        }

        return doctor;

    }

}

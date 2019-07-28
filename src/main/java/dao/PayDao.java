package dao;

import entity.PayDetail;
import entity.Register;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PayDao {

    public boolean save(PayDetail payDetail){

        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql
            String sql = "INSERT INTO pay(case_code,price1,price2,price3) VALUES(?,?,?,?)";
            //预编译
            ptmt = conn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, payDetail.getCase_code());
            ptmt.setString(2, payDetail.getPrice1());
            ptmt.setString(3, payDetail.getPrice1());
            ptmt.setString(4, payDetail.getPrice1());

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

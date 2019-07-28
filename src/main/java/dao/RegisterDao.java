package dao;

import entity.Register;
import utils.DbUtil;
import vo.KaiYaoPatientVo;
import vo.KanZhenPatientVo;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RegisterDao {

    public boolean save(Register register){

        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql
            String sql = "INSERT INTO register(case_code,diagnose_time,diagnose_period,status,clinic_id,doctor_id,register_category_id) VALUES(?,?,?,?,?,?,?)";
            //预编译
            ptmt = conn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, register.getCaseCode());
            ptmt.setDate(2, new java.sql.Date(register.getDiagnoseTime().getTime()));
            ptmt.setString(3, register.getDiagnosePeriod());
            ptmt.setString(4, register.getStatus());
            ptmt.setString(5, register.getClinicId());
            ptmt.setString(6, register.getDoctorId());
            ptmt.setString(7, register.getRegisterCategoryId());

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

    public boolean update(Register register){

        Connection conn = null;
        PreparedStatement ptmt = null;
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql
            String sql = "update register set status = 2 where case_code = ?";
            //预编译
            ptmt = conn.prepareStatement(sql); //预编译SQL，减少sql执行

            //传参
            ptmt.setInt(1, register.getCaseCode());

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


    public List<KanZhenPatientVo> list(Integer doctorId){

        List<KanZhenPatientVo> result = new ArrayList();
        KanZhenPatientVo g = null;

        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select a.case_code,a.status,b.name,b.age from register a,patient b where a.case_code = b.case_code and a.doctor_id = ? ";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,doctorId);

            //执行
            rs = ptmt.executeQuery();
            while (rs.next()) {
                g = new KanZhenPatientVo();
                g.setCaseCode(rs.getInt("case_code"));
                g.setStatus(rs.getString("status"));
                g.setName(rs.getString("name"));
                g.setAge(rs.getInt("age"));
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

    public List<KaiYaoPatientVo> listKaiyao(Integer doctorId){

        List<KaiYaoPatientVo> result = new ArrayList();
        KaiYaoPatientVo g = null;

        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select a.case_code,a.status,b.name,b.age,p.id as presId,p.name as pres from register a,patient b,prescription p where a.case_code = b.case_code  and b.case_code = p.case_code and a.doctor_id = ?";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1,doctorId);

            //执行
            rs = ptmt.executeQuery();
            while (rs.next()) {
                g = new KaiYaoPatientVo();
                g.setCaseCode(rs.getInt("case_code"));
                g.setStatus(rs.getString("status"));
                g.setName(rs.getString("name"));
                g.setAge(rs.getInt("age"));
                g.setPres(rs.getString("pres"));
                g.setPresId(rs.getInt("presId"));
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

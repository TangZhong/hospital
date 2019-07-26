package dao;

import entity.DictionaryEntity;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by donald.tang on 2019/7/26.
 */
public class DictionaryDao {

    public Map<String,String> loadDictionary(String category){
        Connection conn = null;
        PreparedStatement ptmt = null;
        ResultSet rs = null;

//        List<DictionaryEntity> result = new ArrayList<>();
        Map<String,String> map = new HashMap<>();
        try {
            //获取连接
            conn = DbUtil.getConnection();
            //sql, 每行加空格
            String sql = "select * from dictionary where category = ?";
            //预编译SQL，减少sql执行
            ptmt = conn.prepareStatement(sql);
            ptmt.setString(1,category);

            //执行
            rs = ptmt.executeQuery();
            DictionaryEntity entity = null;

            while (rs.next()) {
//               entity = new DictionaryEntity();
//               entity.setKey(rs.getString("key"));
//               entity.setValue(rs.getString("value"));
//               result.add(entity);
                map.put(rs.getString("key"),rs.getString("value"));
            }
        }catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }finally {
            DbUtil.close(rs,ptmt,conn);
        }

        return map;
    }
}

package servlet;

import com.alibaba.fastjson.JSON;
import dao.DictionaryDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by donald.tang on 2019/7/26.
 */
public class DictionaryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/json; charset=utf-8");
        String category = req.getParameter("cat");

        DictionaryDao dictionaryDao = new DictionaryDao();
        Map<String,String> dictionary = dictionaryDao.loadDictionary(category);

        PrintWriter out = resp.getWriter();
        out.print(JSON.parseObject(JSON.toJSONString(dictionary)));
        out.flush();
        out.close();

    }
}

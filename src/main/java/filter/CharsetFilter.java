package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharsetFilter implements Filter{
    private FilterConfig config;
    //初始化配置参数
    private static final String INIT_PARAM_ENCODE="encode";

    public void destroy() {

    }

    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String encode = config.getInitParameter(INIT_PARAM_ENCODE);

        req.setCharacterEncoding(encode);

        chain.doFilter(request, response);

        resp.setCharacterEncoding(encode);

    }

    public void init(FilterConfig config) throws ServletException {
        this.config = config;
    }

}


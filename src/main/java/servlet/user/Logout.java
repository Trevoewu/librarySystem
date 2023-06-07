package servlet.user;

import Bean.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.Constant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;


public class Logout extends HttpServlet {

    private static Logger logger = LoggerFactory.getLogger(Logout.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User attribute = (User) req.getSession().getAttribute(Constant.USER_SESSION);

    if(attribute != null){
        logger.info("["+new Date()+"]"+"["+req.getRemoteAddr()+"]"+"info: 用户"+attribute.getUserCode()+"登出");
    } else {

        logger.error("["+new Date()+"]"+"["+req.getRemoteAddr()+"]"+"error: 用户重复登出");
    }
    resp.sendRedirect("/login.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

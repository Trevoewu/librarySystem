package servlet.user;

import Bean.Book;
import Bean.User;
import dao.book.BookMapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import service.user.UserService;
import service.user.UserServiceImpl;
import util.Constant;
import util.mybatis.MybatisUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.logging.LogRecord;

public class Login extends HttpServlet {
    private UserService service;
    private static Logger logger = Logger.getLogger(Login.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userCode = req.getParameter("userCode");
        String password = req.getParameter("userPassword");
        service = new UserServiceImpl();
        User user = null;
        user = service.findByUserCode(userCode);
        System.out.println("----->:"+user.getUserPassword());
        if(user != null && user.getUserPassword() != null) {
            if(user.getUserPassword().equals(password)) {
//                password correct
//                store in session
                req.getSession().setAttribute(Constant.USER_SESSION,user);
//                推荐系统
                SqlSession sqlSession = MybatisUtil.getSqlSession();
                BookMapper mapper = sqlSession.getMapper(BookMapper.class);
                ArrayList<Book> relativeBook = mapper.getRelativeBook(12, "%计算机%");
                req.setAttribute("bookList",relativeBook);
                req.getRequestDispatcher("/jsp/frame.jsp").forward(req, resp);

                logger.info("["+new Date()+"]"+"["+req.getRemoteAddr()+"]"+"info: 用户"+userCode+"登录");
            } else {
                logger.debug("["+new Date()+"]"+"["+req.getRemoteAddr()+"]"+"info: 用户"+userCode+"密码错误");
                resp.sendRedirect("/login.jsp");
            }
        } else {
            logger.debug("["+new Date()+"]"+"["+req.getRemoteAddr()+"]"+"info: 用户"+userCode+"不存在");
            resp.sendRedirect("/login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

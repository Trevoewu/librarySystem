package servlet.book;

import Bean.Book;
import dao.book.BookMapper;
import org.apache.ibatis.session.SqlSession;
import util.mybatis.MybatisUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class BookDo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //                推荐系统
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        ArrayList<Book> relativeBook = mapper.getRelativeBook(-1, "%%");
        for (Book book : relativeBook){
            System.out.println(book);
        }
        req.setAttribute("bookList",relativeBook);
        req.getRequestDispatcher("/jsp/frame.jsp").forward(req, resp);
        sqlSession.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

package test;

import Bean.Book;
import dao.book.BookMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import util.mybatis.MybatisUtil;

import java.util.ArrayList;
import java.util.Iterator;

public class TestBookMapper {
    @Test
   public void testGetRelativeBook(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        ArrayList<Book> relativeBook = mapper.getRelativeBook(12, "%计算机%");
        Iterator<Book> iterator = relativeBook.iterator();
        while (iterator.hasNext()) {
            System.out.println(iterator.next().toString());
        }
    }
}

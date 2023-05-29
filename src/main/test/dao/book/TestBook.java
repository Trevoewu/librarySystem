package dao.book;

import Bean.Book;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import util.DB;
import util.mybatis.MybatisUtil;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Properties;

public class TestBook {
  private static int PAGE_SIZE;
    static {
        //读取配置文件
        //1、创建properties对象
        Properties properties = new Properties();
        //2、通过类加载器加载资源文件为字节输入流
        InputStream in = TestBook.class.getClassLoader().getResourceAsStream("db.properties");
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        PAGE_SIZE = Integer.parseInt(properties.getProperty("PAGE_SIZE"));
    }
    @Test
    public void getBookList(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<Book> bookList = mapper.getBookList(null, "%Java%", 0, PAGE_SIZE);
        for (Book book : bookList) {
            System.out.println(book);
        }
        sqlSession.close();
    }
    @Test
    public  void addBook(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        mapper.addBook(new Book("9787208061644","追风筝的人","小说","[美] 卡勒德·胡赛尼","29.00","上海人民出版社"));
        sqlSession.commit();
        sqlSession.close();
    }
    @Test
    public void updateBook(){
        SqlSession sqlSession = MybatisUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        int res = mapper.updateBook("creationDate", new Date(), 24);
        sqlSession.commit();
        sqlSession.close();
    }

}

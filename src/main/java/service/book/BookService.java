package service.book;

import Bean.Book;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface BookService {
    ArrayList<Book> getRelativeBook(@Param("id") int id, @Param("bookDesc") String bookDesc);
    List<Book> getBookList(@Param("ISN") String ISN, @Param("bookName") String bookName, @Param("currPage") int currPage, @Param("pageSize") int pageSize);
    int getBookCount(@Param("ISN") String ISN,@Param("bookName") String bookName);
    int delBook(@Param("id") int id);
    int addBook(Book book);
    Book getBookById(@Param("id") int id);
    int updateBook(@Param("key") String key,@Param("value") Object value,@Param("id") int id);
}

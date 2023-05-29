package service.book;

import Bean.Book;
import dao.book.BookMapper;

import java.util.ArrayList;
import java.util.List;

public class BookServiceImpl implements BookService{
    private static BookMapper mapper;
    @Override
    public ArrayList<Book> getRelativeBook(int id, String bookDesc) {
        return mapper.getRelativeBook(id, bookDesc);
    }

    @Override
    public List<Book> getBookList(String ISN, String bookName, int currPage, int pageSize) {
        return mapper.getBookList(ISN, bookName, currPage, pageSize);
    }

    @Override
    public int getBookCount(String ISN, String bookName) {
        return mapper.getBookCount(ISN, bookName);
    }

    @Override
    public int delBook(int id) {
        return mapper.delBook(id);
    }

    @Override
    public int addBook(Book book) {
        return mapper.addBook(book);
    }

    @Override
    public Book getBookById(int id) {
        return mapper.getBookById(id);
    }

    @Override
    public int updateBook(String key, Object value, int id) {
        return 0;
    }
}

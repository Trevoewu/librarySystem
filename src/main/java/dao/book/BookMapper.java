package dao.book;

import Bean.Book;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

public interface BookMapper {
//    @Select("select * from smbms_provider where proDesc like #{bookDesc}  and id != #{id} limit 1")
    ArrayList<Book> getRelativeBook(@Param("id") int id, @Param("bookDesc") String bookDesc);
}

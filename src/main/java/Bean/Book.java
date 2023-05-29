package Bean;

import lombok.Data;

import java.util.Date;
@Data
public class Book {
    private Integer id; // id
    private String ISN; // ISN
    private String bookName; // book name
    private String bookDesc; // book classification
    private String author; // book author
    private String price; // book price
    private String publisher; // Publisher
    private Integer createdBy; // 创建者
    private Date creationDate; // 创建时间
    private Integer modifyBy; // 更新者
    private String proAddress;

    public Book(String ISN, String bookName, String bookDesc, String author, String price, String publisher) {
        this.ISN = ISN;
        this.bookName = bookName;
        this.bookDesc = bookDesc;
        this.author = author;
        this.price = price;
        this.publisher = publisher;
    }
}
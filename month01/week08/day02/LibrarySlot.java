/**
 * Нэг номыг уншигчид олгох, буцаан авах үйлдлийг удирдах класс.
 *
 * @author Khangaikhuu
 */
public class LibrarySlot {
    private Book book;
    private String borrowerName;
    public LibrarySlot(Book targetBook) {
        // TODO 1: book = targetBook, borrowerName = ""
        book = targetBook;
        borrowerName = "";
    }
    // TODO 2: getBorrowerName (() -> String) бичнэ үү
    public String getBorrowerName(){
        return borrowerName;
    }
    // TODO 3: lendTo гэдэг нэртэй method бичнэ үү
    // String -> boolean (readerName авна)
    // Хэрэв book != null БА !book.isBorrowed() БА readerName хоосон биш
    //бол
    // book.setBorrowed(true), borrowerName = readerName болгоод true
    //буцаана.
    public boolean lendTo(String readerName){
        if(book != null && !book.isBorrowed() && readerName != ""){
            book.setBorrowed(true);
            borrowerName = readerName;
            return true;
        }
        else{
            return false;
        }
    }
    // TODO 4: returnBook гэдэг нэртэй method бичнэ үү
    // () -> void
    // book.setBorrowed(false), borrowerName = "" болгоно.
    public void returnBook(){
        book.setBorrowed(false);
        borrowerName = "";
    }
}
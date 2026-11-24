/**
 * Номын мэдээлэл хадгалах класс.
 *
 * @author Khangaikhuu
 */
public class Book {
    private String title;
    private boolean borrowed;
    public Book(String bookTitle) {
        // TODO 1: title = bookTitle, borrowed = false
        title = bookTitle;
        borrowed = false;
    }
    // TODO 2: getTitle (() -> String), isBorrowed (() -> boolean) бичнэ үү
    public String getTitle(){
        return title;
    }
    public boolean isBorrowed(){
        return borrowed;
    }
    // TODO 3: setBorrowed (boolean -> void) бичнэ үү
    public void setBorrowed(boolean stats){
        borrowed = stats;
    }
}
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class LibrarySlotTest {
    @Test
    public void testLendBookSuccess() {
        Book b = new Book("Clean Code");
        LibrarySlot slot = new LibrarySlot(b);
        assertTrue(slot.lendTo("Bataa"));
        assertTrue(b.isBorrowed());
        assertEquals("Bataa", slot.getBorrowerName());
    }

    @Test
    public void testCannotLendAlreadyBorrowedBook() {
        // TODO: Bataa авсан байхад Sarnai авах гэхэд false буцааж,
        //эзэмшигч нь Bataa хэвээр үлдэхийг шалгана уу
        Book b = new Book("Clean Code");
        LibrarySlot slot = new LibrarySlot(b);
        assertTrue(slot.lendTo("Bataa"));
        assertTrue(b.isBorrowed());
        assertFalse(slot.lendTo("Sarnai"));
        assertEquals("Bataa", slot.getBorrowerName());
    }

    @Test
    public void testReturnBookAllowsNextBorrower() {
        // TODO: returnBook() дуудсаны дараа Sarnai номыг авч чадаж байгааг
        //шалгана уу
        Book b = new Book("Clean Code");
        LibrarySlot slot = new LibrarySlot(b);
        assertTrue(slot.lendTo("Bataa"));
        assertTrue(b.isBorrowed());
        slot.returnBook();
        assertTrue(slot.lendTo("Sarnai"));
        assertTrue(b.isBorrowed());
        assertEquals("Sarnai", slot.getBorrowerName());
    }
}
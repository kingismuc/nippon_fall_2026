

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class BankAccountTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class BankAccountTest
{
    @Test// annotation
    public void testDepositValidation() {
        BankAccount acc = new BankAccount();
        acc.deposit(5000);
        acc.deposit(-1000); // Энэ мөр balance-ийг өөрчлөх ёсгүй
        assertEquals(5000, acc.getBalance());
        acc.deposit(3000);
        assertEquals(8000, acc.getBalance());
    }
   // шинээр нэг тест бичихдээ баланс нь эхний утга нь 0.0 байхыг батал
   @Test
   public void testNewAccountIsZeroValidation(){
       BankAccount acc = new BankAccount();
       assertEquals(0.0, acc.getBalance());
   }
}
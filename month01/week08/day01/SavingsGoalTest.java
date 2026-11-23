

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class SavingsGoalTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class SavingsGoalTest
{
//Тестийн тохиолдлууд (SavingsGoalTest)
//Зорилгод хүрэхээс өмнө ба хүрсний дараа: Зорилго 1000 үед 600 хадгалахад isGoalReached() нь false, дахин 400 нэмэхэд true болно.

//Сөрөг дүн хадгалахгүй байх: 500 хадгалсны дараа -300 өгөхөд getSavedAmount() нь 500 хэвээр байна.
    @Test
    public void SavingTest(){
        SavingsGoal money = new SavingsGoal(1000);
        money.save(600);
        assertEquals(false, money.isGoalReached());
        money.save(400);
        assertEquals(true, money.isGoalReached());
    }
    @Test
    public void SavingTest2(){
        SavingsGoal money = new SavingsGoal(1000);
        money.save(500);
        money.save(-300);
        assertEquals(500, money.getSavedAmount());
    }
}
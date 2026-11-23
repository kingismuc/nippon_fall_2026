

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class LightBulbTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class LightBulbTest
{
    //Тестийн тохиолдлууд (LightBulbTest)
    //Асаахад төлөв ба гэрэлтэлт өөрчлөгдөх: Шинэ чийдэн дээр turnOn() дуудахад isOn() нь true, getBrightness() нь 50 байна.

    //Унтраахад гэрэлтэлт 0 болох: Ассан чийдэн дээр turnOff() дуудахад isOn() нь false, getBrightness() нь 0 байна.
    @Test
    public void TestBulb(){
        LightBulb bulb = new LightBulb();
        bulb.turnOn();
        assertEquals(50, bulb.getBrightness());
        assertEquals(true, bulb.isOn());
        bulb.turnOff();
        assertEquals(0, bulb.getBrightness());
        assertEquals(false, bulb.isOn());
    }
}
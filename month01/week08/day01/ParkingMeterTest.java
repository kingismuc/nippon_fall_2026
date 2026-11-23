

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class ParkingMeterTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class ParkingMeterTest
{
    //Тестийн тохиолдлууд (ParkingMeterTest)
    @Test
    public void minuteAndtick(){
        ParkingMeter meter = new ParkingMeter();
        meter.addTime(30);
        meter.addTime(-10);
        assertEquals(30, meter.getMinutes());
    }
    @Test
    public void testTick(){
        ParkingMeter tick = new ParkingMeter();
        tick.tick();
        assertEquals(0, tick.getMinutes());
        tick.addTime(1);
        tick.tick();
        tick.tick();
        assertEquals(0, tick.getMinutes());
    }
    //ерэг минут нэмэх ба сөрөг утгыг хаах: 30 минут нэмээд -10 өгөхөд getMinutes() нь 30 хэвээр байна.

    //tick() дуудахад 0-ээс доош орохгүй байх: 1 минуттай үед tick()-ийг 2 удаа дуудахад getMinutes() нь 0 байна.
}
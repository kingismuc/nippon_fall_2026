

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class BatteryTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class BatteryTest
{
    @Test
//Battery — BlueJ тестийн тохиолдлууд (Тайлбар)
//Дээд хязгаар (100) дээр тогтоох тест:

//Зорилго: Анхны 50 цэнэгтэй зайг дээд хязгаараас хэтрүүлэн цэнэглэхэд 100 дээр зогсож байгааг шалгана.

//BlueJ дээрх шалгалт: Шинэ Battery объект үүсгээд chargeBattery(80) дуудсаны дараа 
//getCharge() нь 100 буцаахыг хүлээнэ.

//Тэг болон сөрөг цэнэглэлтийг хориглох тест:

//Зорилго: 0 эсвэл хасах утгаар цэнэглэх үед цэнэгийн хэмжээ өөрчлөгдөхгүй хэвээр байхыг шалгана.

//BlueJ дээрх шалгалт: Шинэ Battery объект (charge = 50) дээр chargeBattery(0) болон 
//chargeBattery(-20) дуудсаны дараа getCharge() нь 50 хэвээр байхыг хүлээнэ.
    public void testBatteryCharger() {
        Battery charger = new Battery();
        charger.chargeBattery(80);
        assertEquals(100, charger.getCharge());        
    }
    public void testNewBattery(){
        Battery charger = new Battery();
        charger.chargeBattery(-20);
        assertEquals(100, charger.getCharge());
        charger.chargeBattery(0);
        assertEquals(100, charger.getCharge());
    }
}
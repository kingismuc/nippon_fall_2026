import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class CoffeeMachineTest {
    @Test
    public void testMakeEspressoSuccess() {
        CoffeeMachine cm = new CoffeeMachine(100, 30);
        assertTrue(cm.makeEspresso());
        assertEquals(50, cm.getWaterMl());
        assertEquals(15, cm.getBeansGrams());
        assertEquals(1, cm.getCupsMade());
    }

    @Test
    public void testMakeEspressoFailsWhenLowOnBeans() {
        // TODO: 200мл ус, 10гр кофетой үед makeEspresso() false буцааж, ус
        //хасагдахгүй үлдэхийг шалгана уу
        CoffeeMachine cm = new CoffeeMachine(200,10);
        assertFalse(cm.makeEspresso());
        assertEquals(200, cm.getWaterMl());
    }

    @Test
    public void testRefillAllowsMakingMoreCups() {
        // TODO: Нөөц дууссаны дараа refill хийж дахин кофе чанаж болж
        //байгааг шалгана уу
        CoffeeMachine cm = new CoffeeMachine(50,15);
        assertTrue(cm.makeEspresso());
        cm.refill(50,15);
        assertTrue(cm.makeEspresso());
    }
}
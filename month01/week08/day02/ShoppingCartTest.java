import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class ShoppingCartTest {
    @Test
    public void testAddProductsAndTotal() {
        ShoppingCart cart = new ShoppingCart();
        assertTrue(cart.addProduct(new Product("Apple", 2.5)));
        assertTrue(cart.addProduct(new Product("Milk", 3.5)));
        assertEquals(2, cart.getItemCount());
        assertEquals(6.0, cart.getTotalPrice(), 0.001);
    }

    @Test
    public void testCartCapacityLimitIs5() {
        // TODO: 5 бараа нэмсний дараа 6 дахь бараа нэмэхэд false буцааж,
        //тоо 5 хэвээр үлдэхийг шалгана уу
        ShoppingCart cart = new ShoppingCart();
        for(int i = 0; i < 6; ++i){
            cart.addProduct(new Product("Meat", 2.5));
        }
        assertEquals(5, cart.getItemCount());
    }

    @Test
    public void testNullProductRejected() {
        // TODO: null дамжуулахад false буцааж count нэмэгдэхгүй байгааг
        //шалгана уу
        ShoppingCart cart = new ShoppingCart();
        assertFalse(cart.addProduct(null));
        assertEquals(0, cart.getItemCount());
    }
}
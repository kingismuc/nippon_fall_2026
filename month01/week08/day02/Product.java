/**
 * Дэлгүүрийн барааны нэр болон үнийг хадгалах класс.
 *
 * @author Khangaikhuu
 */
public class Product {
    private String name;
    private double price;
    public Product(String productName, double productPrice) {
        // TODO 1: name = productName; price нь сөрөг бол 0.0, үгүй бол
        //productPrice.
        name = productName;
        if(productPrice <= 0.0){
            price = 0;
        }
        else{
            price = productPrice;
        }
    }
    // TODO 2: getName (() -> String), getPrice (() -> double) бичнэ үү
    public String getName(){
        return name;
    }
    public double getPrice(){
        return price;
    }
}
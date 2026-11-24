/**
 * Ус болон кофены үрийн нөөцөөр эспрессо чанах машин.
 *
 * @author Khangaikhuu
 */
public class CoffeeMachine {
    private int waterMl;
    private int beansGrams;
    private int cupsMade;
    public CoffeeMachine(int initialWater, int initialBeans) {
        // TODO 1: Сөрөг утга орвол 0 болгож waterMl, beansGrams-ийг
        //онооно. cupsMade = 0.
        if(initialWater < 0){
            waterMl = 0;
        }
        else{
            waterMl = initialWater;
        }
        if(initialBeans < 0){
            beansGrams = 0;
        }
        else{
            beansGrams = initialBeans;
        }
        cupsMade = 0;
    }
    // TODO 2: getWaterMl (() -> int), getBeansGrams (() -> int),
    //getCupsMade (() -> int) бичнэ үү
    public int getWaterMl(){
        return waterMl;
    }
    public int getBeansGrams(){
        return beansGrams;
    }
    public int getCupsMade(){
        return cupsMade;
    }
    // TODO 3: refill гэдэг нэртэй method бичнэ үү
    // (int water, int beans) -> void (зөвхөн эерэг утгуудыг нэмнэ)
    public void refill(int water, int beans){
        if(water > 0 && beans > 0){
            waterMl += water;
            beansGrams += beans;
        }
    }
    // TODO 4: makeEspresso гэдэг нэртэй method бичнэ үү
    // () -> boolean
    // 1 аяга эспрессо хийхэд 50мл ус, 15гр кофе шаардлагатай.
    // Нөөц хүрэлцвэл ус болон кофег хасаж, cupsMade-ийг 1-ээр нэмээд true
    //буцаана.
    // Хүрэлцэхгүй бол юу ч хасахгүйгээр false буцаана
    public boolean makeEspresso(){
        if(waterMl >= 50 && beansGrams >= 15){
            waterMl -= 50;
            beansGrams -= 15;
            cupsMade += 1;
            return true;
        }
        else{
            return false;
        }
    }
}
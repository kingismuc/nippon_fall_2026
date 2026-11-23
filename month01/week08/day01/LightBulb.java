
/**
 * Write a description of class LightBulb here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class LightBulb
{  
    //LightBulb (Ухаалаг чийдэн)
    //Классын тайлбар
    //Зорилго: Чийдэнгийн асаалт/унтраалт (isOn) болон гэрэлтэлтийн түвшин (brightness, 0–100 хооронд)-г удирдана. 
    //Эхлэхэд isOn = false, brightness = 0 байна.
    private int brightness;
    private boolean isOn;
    public LightBulb(){
        isOn = false;
        brightness = 0;
    }

    //Method-ууд:
    //isOn() (() -> boolean): Асаалттай бол true, унтарсан бол false буцаана.
    public boolean isOn(){
        return isOn;
    }

    //getBrightness() (() -> int): Гэрэлтэлтийн утгыг буцаана.
    public int getBrightness(){
        return brightness;
    }

    //turnOn() (() -> void): isOn = true болгож, хэрэв brightness == 0 бол brightness = 50 болгоно.
    public void turnOn(){
        isOn = true;
        if(brightness == 0){
            brightness = 50;
        }
    }

    //turnOff() (() -> void): isOn = false болгож, brightness = 0 болгоно.
    public void turnOff(){
        isOn = false;
        brightness = 0;
    }

}
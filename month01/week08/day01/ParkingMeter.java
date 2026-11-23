
/**
 * Write a description of class ParkingMeter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class ParkingMeter
{
    //1. ParkingMeter (Зогсоолын тоолуур)
    //Классын тайлбар
    //Зорилго: Зогсоолын үлдэгдэл хугацааг (минутаар) удирдана. Эхлэхэд minutes = 0 байна.
    private int minute;
    public ParkingMeter(){
        minute = 0;
    }

    //Method-ууд:

    //getMinutes() (() -> int): Одоогийн үлдсэн минутыг буцаана.
    public int getMinutes(){
        return minute;
    }

    //addTime(int mins) (int -> void): mins > 0 бол minutes-ийг нэмнэ. 
    //mins <= 0 бол "Алдаа: 0-ээс их минут оруулна уу!" гэж хэвлэнэ.
    public void addTime(int mins){
        if (mins > 0)
        {
            minute += mins;
        }
        else{
            System.out.println("Алдаа: 0-ээс их минут оруулна уу!");
        }
    }

    //tick() (() -> void): minutes > 0 бол 1 минутаар хорогдуулна (minutes 0-ээс доош орохгүй).
    public void tick(){
        if(minute > 0)
        {
            minute -= 1;            
        }
    }

}
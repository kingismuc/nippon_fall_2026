
/**
 * Write a description of class WaterBottle here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class WaterBottle
{
    private int capacityMl;
    private int currentMl;
    public WaterBottle(int capacity){
        capacityMl = capacity;
        currentMl = capacityMl;
    }
    public void takeSip(int sipMl)
    {
        currentMl -= sipMl;
    }
    public void refillFull(){
        currentMl = capacityMl;
    }
    public double getPercentFull(){
        return (currentMl * 100.0) / capacityMl;
    }
}
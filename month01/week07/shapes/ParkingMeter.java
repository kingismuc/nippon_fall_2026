
/**
 * Write a description of class ParkingMeter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class ParkingMeter
{
    private int minutesRemaining;
    private int totalCoinsInserted;
    public ParkingMeter(){
        minutesRemaining = 0;
        totalCoinsInserted = 0;
    }
    public void insertQuarter(){
        minutesRemaining += 15;
        totalCoinsInserted += 1;
    }
    public void InsertDollar(){
        minutesRemaining += 60;
        totalCoinsInserted += 4;
    }
    public void waitTime(int minutesPassed)
    {
      minutesRemaining -= minutesPassed;
    }
    public double getHoursRemaining(){
        return minutesRemaining / 60.0;
    }
}
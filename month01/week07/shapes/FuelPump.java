
/**
 * Write a description of class FuelPump here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class FuelPump
{
   private double pricePerLiter;
   private double litersDispensed;
   public FuelPump(){
       pricePerLiter = 3590;
       litersDispensed = 0.0;
   }
   public void pumpFuel(double liters)
   {
       litersDispensed += liters;
   }
   public double getTotalCost(){
       return litersDispensed * pricePerLiter;
   }
   public void resetPump(){
       litersDispensed = 0.0;
   }
}
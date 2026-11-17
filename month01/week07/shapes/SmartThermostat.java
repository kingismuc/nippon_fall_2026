
/**
 * Write a description of class SmartThermostat here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class SmartThermostat
{
    private String roomName;
    private double currentTemp;
    private double targetTemp;
    private boolean isEcoMode;
    private double energyUsedKwh;
    public SmartThermostat(String room_Name){
        roomName = room_Name;
        currentTemp = 21.5;
        targetTemp = 22.0;
        isEcoMode = false;
        energyUsedKwh = 0.0;
    }
    public void toggleEcoMode(){
        isEcoMode = !isEcoMode;
        if (isEcoMode == true && targetTemp > 20.0)
        {
            targetTemp = 20.0;
            System.out.println("Eco Mode ON: Target capped at 20.0°C");
        }
        else{
            System.out.println("Eco Mode is now: " + isEcoMode);
        }
    }
    public void setTargetTemp(double newTarget)
    {
        if(newTarget < 10.0 || newTarget > 30.0)
        {
            System.out.println("Unsafe temperature! Must be between 10.0 and 30.0.");
        }
        else if(isEcoMode && newTarget > 20.0)
        {
            System.out.println("Cannot exceed 20.0°C while Eco Mode is ON!");
        }
        else{
            targetTemp = newTarget;
            System.out.println("Target updated to " + targetTemp + " °C");
        }
    }
    public String runCycle(){
        double diff = targetTemp - currentTemp;
        if (diff > 0.5){
            currentTemp += 1.0;
            energyUsedKwh += 1.5;
            return "Heating ... Now at " + currentTemp + " °C";
        }
        else if(diff < -0.5)
        {
            currentTemp -= 1.0;
            energyUsedKwh += 1.2;
            return "Cooling ... Now at " + currentTemp + " ° C";
        }
        else{
            energyUsedKwh += 0.1;
            return "Idle (Optimal temperature reached)";
        }
    }
    public double getElectricityBill(double ratePerKwh)
    {
        return energyUsedKwh * ratePerKwh;
    }
}
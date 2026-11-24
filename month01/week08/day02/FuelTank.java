/**
 * Автомашины шатахууны сав ба туулах замын тооцоолуур.
 *
 * @author Khangaikhuu
 */
public class FuelTank {
    private double liters;
    private double maxLiters;
    private double kmPerLiter;
    public FuelTank(double capacity, double efficiency) {
        // TODO 1: capacity > 0 бол maxLiters = capacity (үгүй бол 50.0).
        // efficiency > 0 бол kmPerLiter = efficiency (үгүй бол 10.0).
        // liters = 0.0 байна.
        if(capacity > 0){
            maxLiters = capacity;
        }
        else{
            maxLiters = 50.0;
        }
        if(efficiency > 0){
            kmPerLiter = efficiency;
        }
        else{
            kmPerLiter = 10.0;
        }
        liters = 0.0;
    }
    // TODO 2: getLiters (() -> double) бичнэ үү
    public double getLiters(){
        return liters;
    }
    // TODO 3: refuel гэдэг нэртэй method бичнэ үү
    // double -> void (addedLiters авна; maxLiters-ээс хэтрүүлэхгүй нэмнэ)
    public void refuel(double addedLiters){
        liters += addedLiters;
        if(maxLiters < liters){
            liters = maxLiters;
        }
    }
    // TODO 4: drive гэдэг нэртэй method бичнэ үү
    // double -> double (distanceKm авна)
    // Тухайн зайд шаардлагатай шатахууныг (distanceKm / kmPerLiter)
    //тооцоолно.
    // Хэрэв шатахуун хүрэлцвэл liters-ээс хасаад distanceKm-ийг бүтнээр нь
    //буцаана.
    // Хүрэлцэхгүй бол үлдсэн бүх шатахуунаар явж чадах замыг (liters *
    //kmPerLiter) буцааж, liters = 0 болгоно.
    public double drive(double distanceKm){
        double need = distanceKm / kmPerLiter;
        if(liters >= need){
            liters -= need;
            return distanceKm;
        }
        else{
            double temp = liters;
            liters = 0;
            return temp * kmPerLiter;

        }

    }
}
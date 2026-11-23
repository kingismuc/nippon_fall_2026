
/**
 * Write a description of class SavingGoal here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class SavingsGoal
{
    //3. SavingsGoal (Хадгаламжийн зорилго)
    //Классын тайлбар
    //Зорилго: Зорилтот дүн (targetAmount) болон одоо хуримтлагдсан дүн (savedAmount)-г хянана.
    private int targetAmount;
    private int savedAmount;

    //Method-ууд:

    //SavingsGoal(int target) (constructor): targetAmount = target, savedAmount = 0 болгоно.
    public SavingsGoal(int target){
        targetAmount = target;
        savedAmount = 0;
    }

    //getSavedAmount() (() -> int): Одоогийн хуримтлуулсан дүнг буцаана.
    public int getSavedAmount(){
        return savedAmount;
    }

    //save(int amount) (int -> void): amount > 0 бол savedAmount-д нэмнэ; үгүй бол "Алдаа: Эерэг дүн оруулна уу!" гэж хэвлэнэ.
    public void save(int amount){
        if(amount > 0)
        {
            savedAmount += amount;
        }
        else{
            System.out.println("Алдаа: Эерэг дүн оруулна уу!");
        }
    }

    //isGoalReached() (() -> boolean): savedAmount >= targetAmount бол true, үгүй бол false буцаана.
    public boolean isGoalReached(){
        if(savedAmount >= targetAmount){
            return true;
        }
        else{
            return false;
        }
    }
}
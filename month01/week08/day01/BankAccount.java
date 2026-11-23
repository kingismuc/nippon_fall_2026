
/**
 * Write a description of class BankAccount here.
 *
 * @author Shoovdor
 * @version (a version number or a date)
 */
public class BankAccount
{
    // balance field
    private double balance;

    public BankAccount(){
        balance = 0.0;
    }

    // getBalance гэдэг нэртэй balance-ийг буцаадаг функц бичнэ үү
    public double getBalance()
    {
        return balance;
    }

    // deposit гэдэг нэртэй
    public void deposit(double amount)
    {
        if(amount > 0){
            balance += amount;
        }
        else{
            System.out.println("Алдаа: 0-ээс их дүн оруулна уу!");
        }
    }
}

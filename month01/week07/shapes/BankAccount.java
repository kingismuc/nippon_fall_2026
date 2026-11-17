
/**
 * Write a description of class BankAccount here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class BankAccount
{
    private String owner;
    private int pin;
    private double balance;
    private int failedAttempts;
    private boolean isLocked;
    public BankAccount(String ownerName, int pinCode, double balanceLeft)
    {
        owner = ownerName;
        pin = pinCode;
        balance = balanceLeft;
        failedAttempts = 0;
        isLocked = false;
    }

    public void deposit(double amount){
        if (isLocked == true){
            System.out.println("Account is locked!");
        }
        else if (amount <= 0)
        {
            System.out.println("Invalid deposit amount.");
        }
        else{
            balance += amount;
            System.out.println("Deposited $ " + amount + " . New balance: $ " + balance);
        }
    }

    public void withdraw(int enteredPin, double amount){
        if (isLocked == true){
            System.out.println("Account is locked!");
        }
        else if (enteredPin != pin)
        {
            failedAttempts += 1;
            if (failedAttempts >= 3){
                isLocked = true;
                System.out.println("3 wrong PINs ! Account LOCKED. ");
            }
            else{
                System.out.println("Wrong PIN! Attempts left: " + (3 - failedAttempts));
            }
        }
        else if(enteredPin == pin)
        {
            failedAttempts = 0;
            if(amount > balance)
            {
                System.out.println("Insufficient funds !");
            }
            else{
                balance -= amount;
                if (balance < 50.0)
                {
                    balance -= 2.5;
                }
                else{
                    System.out.println("Withdrew $ " + amount + " . Balance: $ " + balance);
                }
            }
        }

    }
    public void unlockAccount(int masterCode){
        if(masterCode == 9999){
            isLocked = false;
            failedAttempts = 0;
        }
        
    }

}
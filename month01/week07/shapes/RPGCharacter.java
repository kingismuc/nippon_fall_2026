
/**
 * Write a description of class RPGCharacter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class RPGCharacter
{
    private String name;
    private int level;
    private int hp;
    private int mana;
    private int attackCount;
    private boolean isAlive;
    public RPGCharacter(String charName){
        name = charName;
        level = 1;
        hp = 100;
        mana = 50;
        attackCount = 0;
        isAlive = true;
    }

    public void recieveDamage (int damage)
    {
        if(!isAlive){
            System.out.println(name + " is already defeated! ");
        }
        else{
            hp -= damage;
            if (hp <= 0)
            {
                hp = 0;
                isAlive = false;
                System.out.println(name + " has fallen in battle!" );
            }
            else{
                System.out.println(name + " took " + damage + " dmg! HP left: " + hp);
            }
        }
    }

    public void attack(RPGCharacter enemy)
    {
        if(!isAlive)
        {
            System.out.println(name + " cannot attack while defeated! ");
        }
        else {
            attackCount += 1;
            int damage = 15 + (level * 3);
            if (attackCount % 3 == 0)
            {
                damage = damage * 2;
                System.out.println("CRITICAL HIT!");
            }
            enemy.recieveDamage(damage);
        }
    }
    public void castHeal(){
        if(isAlive == true && mana >= 20)
        {
            mana -= 20;
            hp += 35;
            if (hp > 100)
            {
                hp = 100;
            }
            System.out.println(name + " healed! HP: " + hp + ", Mana : " + mana);
        }
        else{
            System.out.println("Cannot heal (dead or not enough mana). ");
        }
    }
}

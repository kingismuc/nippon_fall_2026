
/**
 * Write a description of class StaircaseBuilder here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class StaircaseBuilder
{
    public void buildStairs(int steps){
        for(int i = 0; i < steps; ++i){
            Square s = new Square();
            int size = 25;
            s.changeSize(size);
            s.changeColor("blue");
            int moveX = 50 + i * 25;
            int moveY = 220 - i * 25;
            s.moveHorizontal(moveX - 60);
            s.moveVertical(moveY - 50);
            s.makeVisible();
        }
    }
}
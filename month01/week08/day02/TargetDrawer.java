
/**
 * Write a description of class TargetDrawer here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class TargetDrawer
{
    public void drawTarget(int rings){
        for(int i = 0; i < rings; ++i){
            Square square = new Square();
            int size = 200 - (i * 30);
            if(size <= 0){
                break;
            }
            square.changeSize(size);
            int moveX = 150 - size / 2;
            int moveY = 150 - size / 2;
            if(i % 2 == 0){
                square.changeColor("green");
            }
            else{
                square.changeColor("yellow");
            }
            square.moveHorizontal(moveX - 60);
            square.moveVertical(moveY - 60);
            square.makeVisible(); 
        }
    }
}
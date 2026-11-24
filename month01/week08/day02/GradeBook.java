/**
 * Оюутны шалгалтын оноонуудыг (0-100) хадгалж статистик бодох класс.
 *
 * @author Khangaikhuu
 */
public class GradeBook {
    private int[] scores;
    private int count;
    public GradeBook(int maxExams) {
        // TODO 1: maxExams > 0 бол scores = new int[maxExams], үгүй бол
        //new int[5]. count = 0.
        if(maxExams > 0){
            scores = new int[maxExams];
            count = 0;
        }
        else{
            scores = new int[5];
            count = 0;
        }
    }
    // TODO 2: addScore гэдэг нэртэй method бичнэ үү
    // int -> boolean (score авна; 0..100 хооронд бөгөөд зай байвал нэмээд
    //true буцаана)
    public boolean addScore(int score){
        if(score >= 0 && score <= 100){
            for(int i = 0; i < 100; ++i){
            scores[i] += i;
            
        }
        return true;
    }
        
        else{
            return false;
        }
    }
    // TODO 3: getAverage гэдэг нэртэй method бичнэ үү
    // () -> double (хэрэв count == 0 бол 0.0 буцаана, үгүй бол дундаж
    //оноог буцаана)
    public double getAverage(){
        if(count == 0){
            return 0.0;
        }
        else{
            double sum = 0.0;
            for(int i = 0; i < 100; ++i){
                sum += scores[i];
            }
            return sum / 2 ;
        }   
    }
    // TODO 4: getHighest гэдэг нэртэй method бичнэ үү
    // () -> int (хэрэв count == 0 бол 0 буцаана, үгүй бол хамгийн өндөр
    //оноог буцаана)
}
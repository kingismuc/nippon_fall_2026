
/**
 * Write a description of class BookChapter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class BookChapter
{
   private String chapterTitle;
   private int totalPages;
   private int pagesRead;
   public BookChapter(String title, int pages){
       title = chapterTitle;
       totalPages = pages;
       pagesRead = 0;
   }
   public void readPages(int count){
       pagesRead += count;
   }
   public int getPagesLeft(){
       return totalPages - pagesRead;
   }
   public double estimateMinutesToFinish(double minutesPerPage)
   {
       return getPagesLeft() * minutesPerPage;
   }
}
public class Timer {
  
  public int start;
  public int stop;
  public float time;
 public  boolean running;
 
 Timer(){
  start = 0;
  stop = 0;
  time = 0;
  running = false;
 }
 
    public void start() {
        running = true;
        start = millis();;
    }
    
   public void stop() {
        
         running = false;
    }
    
    public float getTime() {
        
        if (running){
          time = millis();
        }
        
        return time/1000;
    }
}

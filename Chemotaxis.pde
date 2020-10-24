Ball [] balls;
 //declare bacteria variables here   
 void setup()   
 {   
   size(500,500);
   frameRate (4);
   background(255,255,255);
   balls= new Ball [36];
   for (int i=0; i< balls.length; i++){
     balls [i] = new Ball ((int)(Math.random()*500), ((int)(Math.random()*500)));
   }
   
 }   
 void draw()   
 {    
   background(0);
   for (int i=0; i < balls.length; i++){
   balls[i].show();
   balls[i].move();
   }
 }  
 class Ball   
 {     
  int myX;
  int myY;
  int mySpeed;
  int myColor;

   Ball(int x, int y)
  {
     myX=x;
     myY=y;
    mySpeed=5;
    myColor = color ((int)(Math.random ()*256),(int)(Math.random ()*256),(int)(Math.random ()*256)); 
  }

  void move()
  {
   myX = myX + (int)(Math.random()*30)-10;
   myY =  myY + (int)(Math.random()*20)-10;
   
 }
 
  void show()
  {
   fill ((int)(Math.random ()*256),(int)(Math.random ()*256),(int)(Math.random ()*256));
   ellipse (myX,myY, 40,40);
  }
 

}

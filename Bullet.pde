class Bullet extends Floater 
{
	public Bullet(Spaceship pip){
		myCenterX = pip.getX();
		myCenterY = pip.getY();
		myPointDirection = pip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + pip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + pip.getDirectionY();
		myColor = #FF8300;
	}
	public void show ()  //overrides the show function  
  {             
    fill(myColor);   
    ellipse((float)myCenterX, (float)myCenterY, (float)10, (float)10);
  }  
  public void move ()   //override the move fuction so that the bullet doesnt come back and hit you in the ass
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }   
  // other functions ughhh 
 	public void setX(int x){myCenterX = x;}
    public int getX() {return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
}
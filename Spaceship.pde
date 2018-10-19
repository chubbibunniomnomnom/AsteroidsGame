class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 13;
    	int[] x = {20, 16, 8, 0, -12, -20, -12, -12, -20, -12, 0, 8, 16};
    	xCorners = x;
    	int[] y = {0, 8, 12, 12, 16, 12, 8, -8, -12, -16, -12, -12, -8};
    	yCorners = y;
    	myCenterX = 250;
    	myCenterY = 250;
    	myColor = #4ece52;
    }
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
    //your code here
}

class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
		corners = 6;
		int[] x = {0, -2, -1, 1, 0, 2}
		int[] y = {2, 0, -2, -3, 3, 1}
		yCorners = y;
		xCorners = x;
		myColor = #838484;
		myCenterX = (int)(Math.random()*)
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
    public void move(){
    	turn(rotSpeed);
    	super.move();     
    }
}
class Asteroid extends Floater
{
	private int rotSpeed;
	private int scale;
	public Asteroid(){
		corners = 7;
		int[] x = {0, -8, -4, 4, 8, 12, 8};
		int[] y = {8, 0, -8, -12, -8, 0, 4};
		yCorners = y;
		xCorners = x;
		scale = (int)(Math.random()*4)+1;
		for (int i =0; i<corners; i++){
			yCorners[i] = yCorners[i] *scale;
		}
		for (int i =0; i<corners; i++){
			xCorners[i] = xCorners[i] *scale;
		}
		myColor = #838484;
		myCenterX = (int)(Math.random()*500);
		myCenterY = (int)(Math.random()*500);
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
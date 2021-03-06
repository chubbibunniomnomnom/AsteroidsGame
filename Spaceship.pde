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
    	myColor = #124ba8;
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
    public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    noStroke();
    fill(149, 186, 196);
    ellipse(5,0,16,16);

    if (key == 'w'&& keyPressed == true){
        noStroke();
        fill(247, 164, 64);
        triangle(-12, 8, -20, 6, -12, 2);
        triangle (-12, -2, -20, -6, -12, -8);
        triangle(-12, 6, -28, 0, -12, -6);
        fill(245, 247, 165);
        triangle(-12, 4, -24, 0, -12, -4);
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
    //your code here
}

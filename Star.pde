class Star //note that this class does NOT extend Floater
{
  float xPos, yPos, size;
  int sColor;
  public Star(){
  xPos = (float)Math.random()*500;
  yPos = (float)Math.random()*500;
  size = (float)(Math.random()*10)+1;
  sColor = (255);
	}
	public void show(){
		noStroke();
		fill(sColor);
		ellipse(xPos, yPos, size, size);
  //your code here
	}
}

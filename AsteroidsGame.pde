//your variable declarations here
Spaceship nyoom;
public void setup() 
{
	size(500, 500);
	nyoom = new Spaceship();//your code here
}
public void draw() 
{
  nyoom.show();
  //your code here
}

public void keyPressed(){
	if (key == CODED){
		if (key == 'w'){
			nyoom.accelerate(0.7);
		} 
		else if (key == 's'){
			nyoom.accelerate(-0.7);
		}
		else if (key == 'a'){
			nyoom.turn(-5);
		}
		else if (key == 'd'){
			nyoom.turn(5);
		} 
	} else if (key == ENTER){
		nyoom.setX((int)(Math.random()*500));
		nyoom.setY((int)(Math.random()*500));
		nyoom.setDirectionX(0);
		nyoom.setDirectionY(0);

	}
}


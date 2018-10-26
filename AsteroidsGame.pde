//your variable declarations here
Spaceship nyoom;
Star[] stars = new Star[150];
Asteroid derp;
public void setup() 
{
	size(500, 500);
	nyoom = new Spaceship();
	derp = new Asteroid();
	for (int i = 0; i<stars.length; i++){
		stars[i] = new Star();
	}
		//your code here
}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; i++){
		stars[i].show();
	}
  	nyoom.show();
 	nyoom.move();
 	derp.show();
  //your code here
}

public void keyPressed(){
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
	else if (key == ' '){
		nyoom.setX((int)(Math.random()*500));
		nyoom.setY((int)(Math.random()*500));
		nyoom.setDirectionX(0);
		nyoom.setDirectionY(0);
		nyoom.setPointDirection((int)(Math.random()*360));

	}
}


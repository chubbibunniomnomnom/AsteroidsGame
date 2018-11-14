//your variable declarations here
Spaceship nyoom;
Star[] stars = new Star[150];
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int astNum = 30;
float health;
public void setup() 
{
	size(500, 500);
	nyoom = new Spaceship();
	for (int i = 0; i<stars.length; i++){
		stars[i] = new Star();
	}
	for (int i = 0; i<astNum; i++){
		rocks.add(new Asteroid());
		//your code here
	}
	health = 1;
}
public void draw() 
{
	background(0);
	for (int i = 0; i < stars.length; i++){
		stars[i].show();
	}
	//health bar
	fill(255);
	stroke(142, 142, 142);
	strokeWeight(2);
	rect(18, 18, 104, 24);
	noStroke();
	fill(211, 25, 25);
	rect (20, 20, 100* health, 20);
	for (int i = 0; i<rocks.size(); i++){
		rocks.get(i).show();
		rocks.get(i).move();
	}
	//ship and asteroid collision
	for (int i = 0; i<rocks.size(); i++){
		if (dist(nyoom.getX(), nyoom.getY(), rocks.get(i).getX(), rocks.get(i).getY()) < 15*(rocks.get(i).getScale())){
			rocks.remove(i);
			health = health- 0.05;
		}
	}
	for (int i = 0; i<bullets.size(); i++){
		if (bullets.get(i).getX()> 500){
			bullets.remove(i);
		}
		else if(bullets.get(i).getX() < 0){
			bullets.remove(i);
		}
		else if (bullets.get(i).getY() > 500){
			bullets.remove(i);
		} 
		else if(bullets.get(i).getY() < 0){
			bullets.remove(i);
		}
		else {
			bullets.get(i).show();
			bullets.get(i).move();
		}
	}
	// asteroid and bullet collision check
	for (int i = 0; i < bullets.size(); i++){
		for (int a = 0; a < rocks.size(); a++){
			if (dist(rocks.get(a).getX(), rocks.get(a).getY(), bullets.get(i).getX(), bullets.get(i).getY()) < 15*(rocks.get(a).getScale())){
				bullets.remove(i);
				rocks.remove(a);
				break;
			}
		}
	}
	//win check 
	/*
	if (bullets.size() == 0){
		background(0);
		text()
	}
	*/
  	nyoom.show();
 	nyoom.move();
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
	else if (key == ENTER){
		nyoom.setX((int)(Math.random()*500));
		nyoom.setY((int)(Math.random()*500));
		nyoom.setDirectionX(0);
		nyoom.setDirectionY(0);
		nyoom.setPointDirection((int)(Math.random()*360));

	}
	else if (key == ' '){
		bullets.add(new Bullet(nyoom));
	}
	
}


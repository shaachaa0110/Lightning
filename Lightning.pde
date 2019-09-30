int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0);
}
void draw()
{
	int redValue = (int)(Math.random()*255)+1;
	int greenValue = (int)(Math.random()*255)+1;
	int blueValue = (int)(Math.random()*255)+1;
	stroke(redValue, greenValue, blueValue);
	while(endY <= 300){
		endX = startX + (int)(Math.random()*18-9);
		endY = startY + (int)(Math.random()*10);
		startX = (int)(Math.random()*300-150);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		endY++;
	}
}
void mouseDragged()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;

}


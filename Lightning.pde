int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup()
{
  size(300,300);
  strokeWeight(1);
  background(0, 0, 255);
}
void draw()
{
	fill(167);
	stroke(167);
	circle(0, 0, 100);
	circle(50, 0, 75);
	circle(100, 0, 100);
	circle(150, 0, 75);
	circle(200, 0, 100);
	circle(250, 0, 75);
	circle(300, 0, 100);
	int redValue = (int)(Math.random()*255)+1;
	int greenValue = (int)(Math.random()*255)+1;
	int blueValue = (int)(Math.random()*255)+1;
	stroke(240, 230, 140);
	startX = startX + (int)(Math.random()*300 - 150);
	int numLinesDrawn = 0;
	while(endY <= 300){
		endX = startX + (int)(Math.random()*18-9);
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		endY++;
		numLinesDrawn++;
		if(numLinesDrawn == 5){
			background(0, 0, 255);
			fill(167);
			stroke(167);
			circle(0, 0, 100);
			circle(50, 0, 75);
			circle(100, 0, 100);
			circle(150, 0, 75);
			circle(200, 0, 100);
			circle(250, 0, 75);
			circle(300, 0, 100);
		}
	}
}
void mouseDragged()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}


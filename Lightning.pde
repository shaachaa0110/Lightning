int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int numLinesDrawn;
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(178, 232, 255);
  noLoop();
}
void drawBackground()
{
	fill(167);
	stroke(167);
	ellipse(0, 0, 100, 100);
	ellipse(50, 0, 75, 75);
	ellipse(100, 0, 100, 100);
	ellipse(150, 0, 75, 75);
	ellipse(200, 0, 100, 100);
	ellipse(250, 0, 75, 75);
	ellipse(300, 0, 100, 100);
}
void draw()
{
	drawBackground();
	int redValue = (int)(Math.random()*255)+1;
	int greenValue = (int)(Math.random()*255)+1;
	int blueValue = (int)(Math.random()*255)+1;
	stroke(redValue*1.5, greenValue*1.5, blueValue);
	startX = startX + (int)(Math.random()*300 - 150);
	while(endY <= 300){
		endX = startX + (int)(Math.random()*18-9);
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		endY++;
	}
	drawBackground();
	numLinesDrawn++;
	if(numLinesDrawn == 6){
		background(178, 232, 255);
		drawBackground();
		numLinesDrawn = 0;
	}
}
void mouseDragged()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
	redraw();
}
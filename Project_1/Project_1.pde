//Requirements & Deliverables:
//At least one example of mouse interaction
//At least one for loop (for(int i; i < 10; i++)….)
//At least one conditional statement (if/then)

int r = 0;    // red value
//int g = 0;  // blue value
//int b = 0;  // green value
int inc = 1;  // incrent variable that gos up or down to shift colors

PFont f;

void setup() 
{
  size(600, 600); // 600 X 600 canvas. 
  background (255);  // default backdround color.
  
  // making font to display X and Y.
  f = createFont("Avenir-Roman-30.vlw", 30);
  textFont(f);
}


void draw() 
{
  // adding vertical lines for grid.
  for (int x = 0; x <= 600; x = x+25)
  {
    strokeWeight(1);
    stroke(120);
    line(x, 0, x, 600);
  }
  
  //adding horizontal lines for grid.
  for (int y = 0; y <= 600; y = y+25)
  {
    strokeWeight(1);
    stroke(120);
    line(0, y, 600, y);
  }

  strokeWeight(2);
  stroke(0);
  line(300, 0, 300, 600);
  
  strokeWeight(2);
  stroke(0);
  line(0, 300, 600, 300);
  
  // To draw on the canvas.
  if (mousePressed == true) 
  {
    strokeWeight(4);
    if ((mouseX < 300) && (mouseY) < 300)
    {
      stroke(235, 198, 52);
    } else if ((mouseX > 300) && (mouseY < 300))
    {
      stroke(50, 227, 71);
    } else if ((mouseX > 300) && (mouseY > 300)) 
    {
      stroke(235, 198, 52);
    } else if ((mouseX < 300) && (mouseY > 300)) 
    {
      stroke(204, 62, 43);
    }

    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

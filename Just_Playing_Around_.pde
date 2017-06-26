import java.awt.Graphics;
import java.awt.Graphics;
import java.awt.Color;
import java.awt.Graphics;
import javax.swing.JPanel;
/*
 
 sketch_1_forloop
 
 Your neighborhood association wants you to build a white
 picket privacy fence. You've put up the fence rail and
 one picket. Write a loop to place all ten pickets!
 
*/

void picket(int x) {
  beginShape();
  vertex(x, 300);
  vertex(x, 90);
  vertex(x + 20, 65);
  vertex(x + 40, 90);
  vertex(x + 40, 300);
  endShape(CLOSE);
}

void setup() {
  size(400, 300);

  PImage rail = loadImage("fence.tif");
  image(rail, 0, 0);
  
  rect(0, 120, 400, 30);
  

   for(int xpos = 0; xpos < 400; xpos += 46){
   picket(xpos);
  }

//takes (startX, startY, lengthX, lengthY)   
rect(0, 155, 400, 30);

}


public void paint(Graphics g) {
    drawStar(g,Color.BLACK,5,300,300,100,1)…
    drawStar(g,Color.RED,6,100,100,20,20);
    drawStar(g,Color.BLUE,9,200,400,40,40)…
    drawStar(g,Color.YELLOW,27,400,200,10,…
    drawStar(g,Color.GREEN,400,300,300,250…
}

public double circleX(int sides, int angle) {
    double coeff = (double)angle/(double)sides;
    return Math.cos(2*coeff*Math.PI-halfPI);
}

public double circleY(int sides, int angle) {
    double coeff = (double)angle/(double)sides;
    return Math.sin(2*coeff*Math.PI-halfPI);
}

public void drawStar(Graphics g, Color c, int sides, int x, int y, int w, int h) {
    Color = g.getColor();
    g.setColor(c);
    for(int i = 0; i < sides; i++) {
        int x1 = (int)(circleX(sides,i) * (double)(w)) + x;
        int y1 = (int)(circleY(sides,i) * (double)(h)) + y;
        int x2 = (int)(circleX(sides,(i+2)%sides) * (double)(w)) + x;
        int y2 = (int)(circleY(sides,(i+2)%sides) * (double)(h)) + y;
        g.drawLine(x1,y1,x2,y2);
    }
}
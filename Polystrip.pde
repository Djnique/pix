
int x;
int y;
float outsideRadius = 150;
float insideRadius = 100;



void setup() {
  size(1050, 900);
  //size(640, 360);
  background(204);
  x = width/2;
  y = height/2; 

// Bright red
  fill(255,0,0);
  ellipse(20,20,16,16);




}



void draw() {
  background(204);
  
 // This means where your mouse touches the circle it determines how big or small they become
  int numPoints = int(map(mouseX, 0, width, 6, 60));
  float angle = 0;
  float angleStep = 180.0/numPoints;
    
  beginShape(TRIANGLE_STRIP); 
  for (int i = 0; i <= numPoints; i++) {
    float px = x + cos(radians(angle)) * outsideRadius;
    float py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius;
    py = y + sin(radians(angle)) * insideRadius;
    vertex(px, py); 
    angle += angleStep;
  }

  
  endShape();
}
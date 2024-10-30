void setup() {
  size(400, 400);
  background(119, 0, 200);
  noFill();
  
  
}

void draw(){
  if (mousePressed || frameCount <= 1){
    display();
  }
}

void display(){
  background(0);
// Set initial position
  float x = width / 3;
  float y = height / 3;
  //if (mouseX > -1){
    // x = width / mouseX;
   //y = height / mouseY;
  //}
  // Draw a random walk
  for (int i = 0; i < 1000; i++) {
    stroke(random(255), random(255), random(255));
    float stepX = random(-25, 25);
    float stepY = random(-25, 25);
    line(x, y, x + stepX, y + stepY);
    x += stepX;
    y += stepY;
  }
}




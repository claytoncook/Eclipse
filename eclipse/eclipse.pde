int sunX = 0, sunY = 0, sunRad = 75;
int moonX = 0, moonY = 0, moonRad = 73;
int shade = 255;

void setup() {
  size(700, 300);
  sunX = width/2;
  sunY = height/2;
  moonY = height/2;
};

void draw() {
  background(shade);
  noStroke();
  fill(254, 255, 237);
  //Sun
  ellipse(sunX, sunY, sunRad*2, sunRad*2);
  fill(0);
  //Moon
  ellipse(moonX, moonY, moonRad*2, moonRad*2);
  
  if((dist(moonX, moonY, sunX, sunY) < moonX + moonRad) && (moonX < sunX)) {
    shade--;
  }
  
  if((dist(moonX, moonY, sunX, sunY) < moonX + moonRad) && (moonX > sunX)) {
    shade++;
  }
  
  if(shade >= 255) {
    shade = 255;
  }
  
  if(moonX >= 0 - (moonRad * 2)) {
    moonX++;
  }
  if(moonX > width + (moonRad + 5)) {
    moonX = 0 - (moonRad + 5);
  }
};

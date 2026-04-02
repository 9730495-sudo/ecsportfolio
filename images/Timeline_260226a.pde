// Beth Chipman | 2/26/26 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#FCC581);
  drawRef();
  histEvent(263,200,"June 2024",true, "National map showing shark incidents across U.S. coastlines with no fatal attacks.");
  histEvent(263,300, "June 2024",false,"A 46 year old swimmer was bitten on the torso, arm, and hand while swimming in Del Mar, California.");
  histEvent (530,200, "Feb 17",true, "Green Matters published an updated list of all shark attacks reported so far in 2025.");
  histEvent (650,300, "June 1",false, "New Jersey had zero shark bites for the second year in a row, even with issues in other waters.");
  histEvent (713,200, "July 30", true, "Tracking Sharks confirmed 38 publicly verified shark bite incidents, including eight fatal attacks.");
  histEvent (713,300, "July 18", false, "Middle year analysis showed that most U.S. shark bites happened in warm water months, mostly with swimmers and surfers.");
  histEvent (785,200,"August",true, "Newsweek showed that 12 shark attacks had happened in U.S. oceans so far, with seven in Florida.");
  histEvent (890,300, "Dec 24", false, "There were 68 shark attack bites worldwide, 9 being fatal.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(37);
  fill(#FA380C);
  text("Shark Event Timeline",width/2,80);
  textSize(15);
  text("By Beth Chipman",width/2,98);
  strokeWeight(4);
  stroke(#FCFFFF);
  line(50,250,900,250);
  line(50,245,50,255);
  line(900,245,900,255);
  line(width/2,245,width/2,255);
  line(250,245,250,255);
  line(700,245,700,255);
  strokeWeight(2);
  text("2024",50,270);
  text("2025",width/2,270);
  text("2026",900,270);
  
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top==true) {
  line(x,y,x-15,y+50);
  } else {
  line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#DE9A62);
  rect(x,y,100,30,9);
  fill(255);
  textSize(15);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-20 && mouseY < y+20) {
    textSize(20);
    text (detail,width/2, 350);
  }
}

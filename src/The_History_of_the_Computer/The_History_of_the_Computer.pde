// Aristotle Stokes | Aug 28 2025 | Computer Timeline

void setup() {
  size(900,400);
  background(255);
}

void draw() {
  //Backround and Historic Events
  background(255);
  drawRef();
  histEvent(100,150,"Colossus-1944",true,"The Colossus Computer was created in the UK by the British government to crack nazi codes in WW2.");
  histEvent(200,250,"Eniac-1946",false,"The Eniac Computer was created in the United States by the U.S. government \n to calculate artillery firing tables during WW2.");
  histEvent(300,150,"Manchester-1948",true,"The Manchester Baby Computer was created in the UK by Frederic Williams, Tom Kilburn, and Geoff Tootill \n to test the Williams-Kilburn tube.");
  histEvent(400,250,"IBM S/360-1964",false,"The IBM System/360 Computer was created in the 
}

void drawRef() {
  //Title
  textAlign(CENTER);
  textSize(38);
  fill(0);
  text("Historic Computer Systems",450,80);
  textSize(18);
  fill(100);
  text("by Aristotle Stokes",450,110);
  fill(0);
    
  //Render Timeline
  line(50,200,850,200);
  line(50,210,50,190);
  line(850,210,850,190);
    
  //Text Markers
  textSize(14);
  text("1935",50,180);
  text("2010",850,180);
}

//Description of Histevnet
void histEvent(int x,int y, String title, boolean top, String detail) {
  if(top == true){
    line(x,y,x,y+50);
  } else{
    line(x,y,x,y-50);
  }
  rectMode(CENTER);
  fill(#0F3AA5);
  rect(x,y,80,30,20);
  fill(255);
  textSize(10);
  text(title,x,y+5);
  
  if (mouseX>x-40 && mouseX<x+40 && mouseY<y+15 && mouseY>y-15){
    fill(0);
    textSize(18);
    text(detail,width/2,300);
  }
}

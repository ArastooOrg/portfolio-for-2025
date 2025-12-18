// Aristotle Stokes | 9 Sept 2025 | Graphics Grade Assignment

void setup() {
  size(402, 100);
  background(200);
}

void draw() {
  background(150);
  line(0, 50, 402, 50);
  
  for(int i = 0; i<width; i+=50) {
    line(i,45,i,55);
    textSize(11);
    text(i/100.0,i,65);
  }
  
  ellipse(mouseX, height/2, 5, 5);
  text(mouseX/100.0, mouseX, 45);
  textSize(18);
  text("Grade Converter by: Aristotle Stokes", width/2, 20);
  textSize(11);
  textAlign(CENTER);
  text(calcGrade(mouseX/100.00), width/2, 85);
  float grade = random(0.0, 4.001);
  println(grade);
}

String calcGrade(float val) {
  String returnVal;
  if (val >= 3.51) {
    returnVal = "Asign Letter Grade A";
  } else if (val >= 3.0) {
    returnVal = "Asign Letter Grade A-";
  } else if (val >= 2.84) {
    returnVal = "Asign Grade Letter B+";
  } else if (val >= 2.67) {
    returnVal = "Asign Grade Letter B";
  } else if (val >= 2.5) {
    returnVal = "Asign Grade Letter B-";
  } else if (val >= 2.34) {
    returnVal = "Asign Grade Letter C+";
  } else if (val >= 2.17) {
    returnVal = "Asign Grade Letter C";
  } else if (val >= 2.00) {
    returnVal = "Asign Grade Letter C-";
  } else if (val >= 1.66) {
    returnVal = "Asign Grade Letter D+";
  } else if (val >= 1.33) {
    returnVal = "Asign Grade Letter D";
  } else if (val >= 1.00) {
    returnVal = "Asign Grade Letter D-";
  } else {
    returnVal = "Asign Grade Letter F";
  }
  return returnVal;
}

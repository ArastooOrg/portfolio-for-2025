// Aristotle Stokes | 25 Sept 2025 | Calculator
Button[] buttons = new Button[12];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
String op;
boolean left;

void setup() {
  size(360, 500);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = "";
  left = true;
  textSize(25);
  numButtons[7] = new Button(60, 200, 40, 40, "7", #79ADFF, #D6E6FF);
  numButtons[8] = new Button(120, 200, 40, 40, "8", #79ADFF, #D6E6FF);
  numButtons[9] = new Button(180, 200, 40, 40, "9", #79ADFF, #D6E6FF);
  buttons[0] = new Button(240, 200, 40, 40, "+", #69D19E, #C0DECF);
  buttons[1] = new Button(300, 200, 40, 40, "x", #69D19E, #C0DECF);
  numButtons[4] = new Button(60, 260, 40, 40, "4", #79ADFF, #D6E6FF);
  numButtons[5] = new Button(120, 260, 40, 40, "5", #79ADFF, #D6E6FF);
  numButtons[6] = new Button(180, 260, 40, 40, "6", #79ADFF, #D6E6FF);
  buttons[2] = new Button(240, 260, 40, 40, "-", #69D19E, #C0DECF);
  buttons[3] = new Button(300, 260, 40, 40, "÷", #69D19E, #C0DECF);
  numButtons[1] = new Button(60, 320, 40, 40, "1", #79ADFF, #D6E6FF);
  numButtons[2] = new Button(120, 320, 40, 40, "2", #79ADFF, #D6E6FF);
  numButtons[3] = new Button(180, 320, 40, 40, "3", #79ADFF, #D6E6FF);
  buttons[4] = new Button(270, 320, 100, 40, "=", #69D19E, #C0DECF);
  buttons[5] = new Button(60, 380, 40, 40, ".", #79ADFF, #D6E6FF);
  numButtons[0] = new Button(120, 380, 40, 40, "0", #79ADFF, #D6E6FF);
  buttons[6] = new Button(180, 380, 40, 40, "±", #79ADFF, #D6E6FF);
  buttons[7] = new Button(270, 380, 100, 40, "CLEAR", #FF676A, #FFC4C5);
  buttons[8] = new Button(60, 440, 40, 40, "^", #79ADFF, #D6E6FF);
  buttons[9] = new Button(120, 440, 40, 40, "√x", #79ADFF, #D6E6FF);
  buttons[10] = new Button(180, 440, 40, 40, "|x|", #79ADFF, #D6E6FF);
  buttons[11] = new Button(270, 440, 100, 40, "←", #FF676A, #FFC4C5);
}

void draw() {
  background(175);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0.0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0.0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("x")) {
      dVal = "0.0";
      left = false;
      op = "x";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0.0";
      left = false;
      op = "÷";
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("CLEAR")) {
      l = 0.0;
      r = 0.0;
      result = 0.0;
      op = "";
      dVal = "0.0";
      left = true;
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left == true) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      dVal = "0.0";
      left = false;
      op = "^";
    } else if (buttons[i].over && buttons[i].val.equals("√x")) {
      op = "√x";
    } else if (buttons[i].over && buttons[i].val.equals("|x|")) {
      op = "|x|";
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("←")) {
      if (left) {
        dVal=dVal.substring(0, dVal.length() - 1);
        l=float(dVal);
      } else {
        dVal = dVal.substring(0, dVal.length() - 1);
        r=float(dVal);
      }
    }
  }
  // if (buttons[i].over && buttons[i].val.equals("+"))



  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<9) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }

      println("l:" + l);
      println("r:" + r);
      println("result:" + result);
      println("left:" + left);
      println("op:" + op);
    }
  }
}

void updateDisplay() {
  fill(255);
  rect(180, 90, 280, 110, 15);

  fill(0);
  textAlign(RIGHT);
  textSize(60);
  text(dVal, width - 50, 130);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("^")) {
    result = pow(l, r);
  } else if (op.equals("√x")) {
    result = sqrt(l);
  } else if (op.equals("|x|")) {
    result = abs(l);
  }
  dVal = str(result);
  l = result;
  left = true;
}

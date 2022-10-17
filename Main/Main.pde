//Global Variables

//ControlP5 Items
import controlP5.*;
ControlP5 cp5;
ControlP5 controlFont;
DropdownList modeDropdown;
Textfield input;

//Program Modes
boolean mapMode = true;
boolean testerMode = false;
boolean alphanumericTab = true;
boolean symbolsTab = false;
boolean modifiersTab = false;

//UI Colors
color greyBlue100 = color(33,43,54);
color greyBlue75 = color(53, 62, 71);
color greyBlue50 = color(72, 80, 88);
color greyBlue25 = color(112,117,123);
color yellow = color(255, 175, 95);
color white = color(255,255,255);

//UI Font
PFont font;

PImage tilde_black;
PImage Semicolon_black;
PImage Quotes_black;
PImage LeftBracket_black;
PImage RightBracket_black;
PImage Backslash_black;
PImage One_black;
PImage Two_black;
PImage Three_black;
PImage Four_black;
PImage Five_black;
PImage Six_black;
PImage Seven_black;
PImage Eight_black;
PImage Nine_black;
PImage Zero_black;
PImage Dash_black;
PImage Equal_black;
PImage Comma_black;
PImage Period_black;
PImage Forwardslash_black;
PImage Shift_black;
PImage Control_black;
PImage Option_black;
PImage Command_black;
PImage Space_black;
PImage Return_black;


PImage Q_black;
PImage A_black;
PImage B_black;
PImage C_black;
PImage D_black;
PImage E_black;
PImage F_black;
PImage G_black;
PImage H_black;
PImage I_black;
PImage J_black;
PImage K_black;
PImage L_black;
PImage M_black;
PImage N_black;
PImage O_black;
PImage P_black;
PImage R_black;
PImage S_black;
PImage T_black;
PImage U_black;
PImage V_black;
PImage W_black;
PImage X_black;
PImage Y_black;
PImage Z_black;

//Misc
PImage Alphanumeric_Unselected;
PImage Symbols_Unselected;
PImage Modifiers_Unselected;
PImage Alphanumeric_Selected;
PImage Symbols_Selected;
PImage Modifiers_Selected;
PImage Clear_Key;
void setup() {
  size(1300, 780);
  pixelDensity(displayDensity());
  font = createFont("Barlow.ttf",13,true);
    //ControlP5 Items
  cp5 = new ControlP5(this);
  cp5.setAutoDraw(false);
  ControlFont controlFont = new ControlFont(font,13);
  modeDropdown = cp5.addDropdownList("Mode: Key Map").setPosition(20, 20)
                  .setFont(controlFont).setOpen(false);
  customize(modeDropdown);
  input = cp5.addTextfield("Input")
     .setPosition(106,145)
     .setSize(526,40)
     .setFont(controlFont)
     .setAutoClear(true)
     .setCaptionLabel("")
     .setColorBackground(greyBlue75)
     .setColorActive(yellow)
     .setColorForeground(greyBlue75)
     .setColor(white);
  
  //Hardcoded Unselected Keys
  tilde_black = loadImage("Tilde_Key_Black.png");
  One_black = loadImage("1_Key_Black.png");
  Two_black = loadImage("2_Key_Black.png");
  Three_black = loadImage("3_Key_Black.png");
  Four_black = loadImage("4_Key_Black.png");
  Five_black = loadImage("5_Key_Black.png");
  Six_black = loadImage("6_Key_Black.png");
  Seven_black = loadImage("7_Key_Black.png");
  Eight_black = loadImage("8_Key_Black.png");
  Nine_black = loadImage("9_Key_Black.png");
  Zero_black = loadImage("0_Key_Black.png");
  Dash_black = loadImage("Dash_Key_Black.png");
  Equal_black = loadImage("Equal_Key_Black.png");
  A_black = loadImage("A_Key_Black.png");
  B_black = loadImage("B_Key_Black.png");
  C_black = loadImage("C_Key_Black.png");
  D_black = loadImage("D_Key_Black.png");
  E_black = loadImage("E_Key_Black.png");
  F_black = loadImage("F_Key_Black.png");
  G_black = loadImage("G_Key_Black.png");
  H_black = loadImage("H_Key_Black.png");
  I_black = loadImage("I_Key_Black.png");
  J_black = loadImage("J_Key_Black.png");
  K_black = loadImage("K_Key_Black.png");
  L_black = loadImage("L_Key_Black.png");
  M_black = loadImage("M_Key_Black.png");
  N_black = loadImage("N_Key_Black.png");
  O_black = loadImage("O_Key_Black.png");
  P_black = loadImage("P_Key_Black.png");
  Q_black = loadImage("Q_Key_Black.png");
  R_black = loadImage("R_Key_Black.png");
  S_black = loadImage("S_Key_Black.png");
  T_black = loadImage("T_Key_Black.png");
  U_black = loadImage("U_Key_Black.png");
  V_black = loadImage("V_Key_Black.png");
  W_black = loadImage("W_Key_Black.png");
  X_black = loadImage("X_Key_Black.png");
  Y_black = loadImage("Y_Key_Black.png");
  Z_black = loadImage("Z_Key_Black.png");
  Semicolon_black = loadImage("Semicolon_Key_Black.png");
  Quotes_black = loadImage("Quotes_Key_Black.png");
  LeftBracket_black = loadImage("LeftBracket_Key_Black.png");
  RightBracket_black = loadImage("RightBracket_Key_Black.png");
  Backslash_black = loadImage("Backslash_Key_Black.png");
  Comma_black = loadImage("Comma_Key_Black.png");
  Period_black = loadImage("Period_Key_Black.png");
  Forwardslash_black = loadImage("Forwardslash_Key_Black.png");
  Shift_black = loadImage("Shift_Key_Black.png");
  Control_black = loadImage("Control_Key_Black.png");
  Option_black = loadImage("Option_Key_Black.png");
  Command_black = loadImage("Command_Key_Black.png");
  Space_black = loadImage("Space_Key_Black.png");
  Return_black = loadImage("Return_Key_Black.png");
  
  
  //Misc
  Alphanumeric_Unselected = loadImage("Alphanumeric_Tab_Unselected.png");
  Symbols_Unselected = loadImage("Symbols_Tab_Unselected.png");
  Modifiers_Unselected = loadImage("Modifiers_Tab_Unselected.png");
  Alphanumeric_Selected = loadImage("Alphanumeric_Tab_Selected.png");
  Symbols_Selected = loadImage("Symbols_Tab_Selected.png");
  Modifiers_Selected = loadImage("Modifiers_Tab_Selected.png");
  Clear_Key = loadImage("Clear_Key.png");
}

void customize(DropdownList dropDown){
  dropDown.setBackgroundColor(greyBlue75);
  dropDown.setItemHeight(37);
  dropDown.setBarHeight(37);
  dropDown.setWidth(132);
  dropDown.setHeight(132);
  dropDown.addItem("Mode: Key Map", 0);
  dropDown.addItem("Mode: Key Test", 1);
  dropDown.setColorBackground(greyBlue75);
  dropDown.setColorForeground(yellow);
  dropDown.setColorActive(yellow);
}

void draw() {
  background(greyBlue25);
  fill(greyBlue50);
  noStroke();
  textFont(font);
  rect(853,0,447,780);
  fill(greyBlue75);
  rect(853,67,447,780);
  cp5.draw();
  checkMode();
  checkTab();
  
  if(mapMode){
    //Keymap mode window
    drawUnselectedTop();
    input.hide();
  }
  else if (testerMode){
    //Key tester mode window
    drawUnselectedTop();
    drawTester();
  }
}
void checkMode(){
  int active = int(modeDropdown.getValue());
  if(active == 0){
    mapMode = true;
    testerMode = false;
  }
  else if(active == 1){
    mapMode = false;
    testerMode = true;
  }
}
void checkTab(){
  if(alphanumericTab){
    //Selected Tab
    image(Alphanumeric_Selected, 884, 16, 123, 37);
    showAlphanumeric();
  }
  else if(symbolsTab){
    //Selected Tab
    image(Symbols_Selected, 1019, 16, 123, 37);
    showSymbols();
  }
  else if(modifiersTab){
    //Selected Tab
    image(Modifiers_Selected, 1153, 16, 123, 37);
    showModifiers();
  }
  if(!alphanumericTab){
    //Unselected Tab
    image(Alphanumeric_Unselected, 884, 16, 123, 37);
  }
  if(!symbolsTab){
    //Unselected Tab
    image(Symbols_Unselected, 1019, 16, 123, 37);
  }
  if(!modifiersTab){
    //Unselected Tab
    image(Modifiers_Unselected, 1153, 16, 123, 37);
  }
}
void drawUnselectedTop(){
  //(imageVar, x coord, y coord, width, height)
  image(tilde_black, 99, 223, 39,39);
  image(One_black, 145, 223, 39,39);
  image(Two_black, 191, 223, 39,39);
  image(Three_black, 237, 223, 39,39);
  image(Four_black, 283, 223, 39,39);
  image(Five_black, 329, 223, 39,39);
  image(Six_black, 375, 223, 39,39);
  image(Seven_black, 421, 223, 39,39);
  image(Eight_black, 467, 223, 39,39);
  image(Nine_black, 513, 223, 39,39);
  image(Zero_black, 559, 223, 39,39);
  image(Dash_black, 605, 223, 39,39);
  image(Equal_black, 651, 223, 39,39);
  
  image(Q_black, 168, 269, 39, 39);
  image(W_black, 214, 269, 39, 39);
  image(E_black, 260, 269, 39, 39);
  image(R_black, 306, 269, 39, 39);
  image(T_black, 352, 269, 39, 39);
  image(Y_black, 398, 269, 39, 39);
  image(U_black, 444, 269, 39, 39);
  image(I_black, 490, 269, 39, 39);
  image(O_black, 536, 269, 39, 39);
  image(P_black, 582, 269, 39, 39);
  image(LeftBracket_black, 628, 269, 39, 39);
  image(RightBracket_black, 674, 269, 39, 39);
  image(Backslash_black, 720, 269, 39, 39);
  
  image(A_black, 191, 315, 39, 39);
  image(S_black, 237, 315, 39, 39);
  image(D_black, 283, 315, 39, 39);
  image(F_black, 329, 315, 39, 39);
  image(G_black, 375, 315, 39, 39);
  image(H_black, 421, 315, 39, 39);
  image(J_black, 467, 315, 39, 39);
  image(K_black, 513, 315, 39, 39);
  image(L_black, 559, 315, 39, 39);
  image(Semicolon_black, 605, 315, 39, 39);
  image(Quotes_black, 651, 315, 39, 39);
  image(Return_black, 697, 315, 66, 39);
  
  image(Z_black, 214, 361, 39, 39);
  image(X_black, 260, 361, 39, 39);
  image(C_black, 306, 361, 39, 39);
  image(V_black, 352, 361, 39, 39);
  image(B_black, 398, 361, 39, 39);
  image(N_black, 444, 361, 39, 39);
  image(M_black, 490, 361, 39, 39);
  image(Comma_black, 536, 361, 39, 39);
  image(Period_black, 582, 361, 39, 39);
  image(Forwardslash_black, 628, 361, 39, 39);
  
  image(Shift_black, 129, 407, 78, 39);
  image(Control_black, 147, 467, 44, 39);
  image(Option_black, 202, 467, 44, 39);
  image(Command_black, 256, 467, 56, 39);
  image(Space_black, 322, 467, 156, 39);
  image(Command_black, 555, 467, 56, 39);
  image(Option_black, 621, 467, 44, 39);
}
void drawTester(){
  image(Clear_Key, 650 , 145, 78, 36);
  input.show();
}
void clear() {
  cp5.get(Textfield.class,"Input").clear();
}
void showAlphanumeric(){
  //Add Keys
  image(One_black, 873, 89, 39,39);
  image(Two_black, 919, 89, 39,39);
  image(Three_black, 965, 89, 39,39);
  image(Four_black, 1011, 89, 39,39);
  image(Five_black, 1057, 89, 39,39);
  image(Six_black, 1103, 89, 39,39);
  image(Seven_black, 1149, 89, 39,39);
  image(Eight_black, 1195, 89, 39,39);
  image(Nine_black, 1241, 89, 39,39);
  
  image(Zero_black, 873, 136, 39,39);
  image(A_black, 919, 136, 39, 39);
  image(B_black, 965, 136, 39, 39);
  image(C_black, 1011, 136, 39, 39);
  image(D_black, 1057, 136, 39, 39);
  image(E_black, 1103, 136, 39, 39);
  image(F_black, 1149, 136, 39, 39);
  image(G_black, 1195, 136, 39, 39);
  image(H_black, 1241, 136, 39, 39);
  
  image(I_black, 873, 183, 39, 39);
  image(J_black, 919, 183, 39, 39);
  image(K_black, 965, 183, 39, 39);
  image(L_black, 1011, 183, 39, 39);
  image(M_black, 1057, 183, 39, 39);
  image(N_black, 1103, 183, 39, 39);
  image(O_black, 1149, 183, 39, 39);
  image(P_black, 1195, 183, 39, 39);
  image(Q_black, 1241, 183, 39, 39);
  
  image(R_black, 873, 230, 39, 39);
  image(S_black, 919, 230, 39, 39);
  image(T_black, 965, 230, 39, 39);
  image(U_black, 1011, 230, 39, 39);
  image(V_black, 1057, 230, 39, 39);
  image(W_black, 1103, 230, 39, 39);
  image(X_black, 1149, 230, 39, 39);
  image(Y_black, 1195, 230, 39, 39);
  image(Z_black, 1241, 230, 39, 39);
}
void showSymbols(){
  //Add Keys
  image(tilde_black, 873, 89, 39,39);
  image(Dash_black, 1057, 89, 39,39);
  image(Equal_black, 1103, 89, 39,39);
  image(LeftBracket_black, 873, 136, 39, 39);
  image(RightBracket_black, 919, 136, 39, 39);
  image(Backslash_black, 1195, 89, 39, 39);
  image(Semicolon_black, 1011, 89, 39, 39);
  image(Quotes_black, 1241, 89, 39, 39);
  image(Comma_black, 919, 89, 39, 39);
  image(Period_black, 965, 89, 39, 39);
  image(Forwardslash_black, 1149, 89, 39, 39);
}
void showModifiers(){
  //Add Keys
  image(Return_black, 873, 183, 66, 39);
  image(Shift_black, 873, 89, 78, 39);
  image(Control_black, 873, 136, 44, 39);
  image(Option_black, 928, 136, 44, 39);
  image(Command_black, 982, 136, 56, 39);
  image(Space_black, 873, 230, 156, 39);
}
void mousePressed(){
  if (!modeDropdown.isMouseOver()) {    
    modeDropdown.close();
  }
  if(pmouseX > 884 && pmouseX < 1007 && pmouseY > 16 && pmouseY < 53){
    if(!alphanumericTab){
      alphanumericTab = true;
      symbolsTab = false;
      modifiersTab = false;
    }
  }
  if(pmouseX > 1019 && pmouseX < 1142 && pmouseY > 16 && pmouseY < 53){
    if(!symbolsTab){
      alphanumericTab = false;
      symbolsTab = true;
      modifiersTab = false;
    }
  }
  if(pmouseX > 1153 && pmouseX < 1276 && pmouseY > 16 && pmouseY < 53){
    if(!modifiersTab){
      alphanumericTab = false;
      symbolsTab = false;
      modifiersTab = true;
    }
  }
  if(testerMode){
      if(pmouseX > 650 && pmouseX < 728 && pmouseY > 145 && pmouseY < 181){
      clear();
      }
  }
}

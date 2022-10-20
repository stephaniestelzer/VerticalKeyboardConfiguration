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
boolean infoPopup = false;
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

PImage tilde_yellow;
PImage Semicolon_yellow;
PImage Quotes_yellow;
PImage LeftBracket_yellow;
PImage RightBracket_yellow;
PImage Backslash_yellow;
PImage One_yellow;
PImage Two_yellow;
PImage Three_yellow;
PImage Four_yellow;
PImage Five_yellow;
PImage Six_yellow;
PImage Seven_yellow;
PImage Eight_yellow;
PImage Nine_yellow;
PImage Zero_yellow;
PImage Dash_yellow;
PImage Equal_yellow;
PImage Comma_yellow;
PImage Period_yellow;
PImage Forwardslash_yellow;
PImage Shift_yellow;
PImage Control_yellow;
PImage Option_yellow;
PImage Command_yellow;
PImage Space_yellow;
PImage Return_yellow;


PImage Q_yellow;
PImage A_yellow;
PImage B_yellow;
PImage C_yellow;
PImage D_yellow;
PImage E_yellow;
PImage F_yellow;
PImage G_yellow;
PImage H_yellow;
PImage I_yellow;
PImage J_yellow;
PImage K_yellow;
PImage L_yellow;
PImage M_yellow;
PImage N_yellow;
PImage O_yellow;
PImage P_yellow;
PImage R_yellow;
PImage S_yellow;
PImage T_yellow;
PImage U_yellow;
PImage V_yellow;
PImage W_yellow;
PImage X_yellow;
PImage Y_yellow;
PImage Z_yellow;

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

// Image Arrays for displaying the top keyboard
PImage[] FirstRowTop = new PImage[13];
PImage[] SecondRowTop = new PImage[13];
PImage[] ThirdRowTop = new PImage[12];
PImage[] FourthRowTop = new PImage[10];
PImage[] SpecialKeysTop = new PImage[7];
PImage[] TopKeyboardBlack = new PImage[55];

PImage picked; // set to the image that was picked
int pickedIndex;
// Image arrays for displaying the bottom keyboard
PImage[] FirstRowBottom = new PImage[13];
PImage[] SecondRowBottom = new PImage[13];
PImage[] ThirdRowBottom = new PImage[12];
PImage[] FourthRowBottom = new PImage[10];
PImage[] SpecialKeysBottom = new PImage[7];
PImage[] TopKeyboardYellow = new PImage[55];

PImage[] DisplayKeyboard = new PImage[55];

//Misc
PImage Info_icon;
PImage Confirm_Key;
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
  
  // Yellow
  tilde_yellow = loadImage("Tilde_Key_Yellow.png");
  One_yellow = loadImage("1_Key_Yellow.png");
  Two_yellow = loadImage("2_Key_Yellow.png");
  Three_yellow = loadImage("3_Key_Yellow.png");
  Four_yellow = loadImage("4_Key_Yellow.png");
  Five_yellow = loadImage("5_Key_Yellow.png");
  Six_yellow = loadImage("6_Key_Yellow.png");
  Seven_yellow = loadImage("7_Key_Yellow.png");
  Eight_yellow = loadImage("8_Key_Yellow.png");
  Nine_yellow = loadImage("9_Key_Yellow.png");
  Zero_yellow = loadImage("0_Key_Yellow.png");
  Dash_yellow = loadImage("Dash_Key_Yellow.png");
  Equal_yellow = loadImage("Equal_Key_Yellow.png");
  A_yellow = loadImage("A_Key_Yellow.png");
  B_yellow = loadImage("B_Key_Yellow.png");
  C_yellow = loadImage("C_Key_Yellow.png");
  D_yellow = loadImage("D_Key_Yellow.png");
  E_yellow = loadImage("E_Key_Yellow.png");
  F_yellow = loadImage("F_Key_Yellow.png");
  G_yellow = loadImage("G_Key_Yellow.png");
  H_yellow = loadImage("H_Key_Yellow.png");
  I_yellow = loadImage("I_Key_Yellow.png");
  J_yellow = loadImage("J_Key_Yellow.png");
  K_yellow = loadImage("K_Key_Yellow.png");
  L_yellow = loadImage("L_Key_Yellow.png");
  M_yellow = loadImage("M_Key_Yellow.png");
  N_yellow = loadImage("N_Key_Yellow.png");
  O_yellow = loadImage("O_Key_Yellow.png");
  P_yellow = loadImage("P_Key_Yellow.png");
  Q_yellow = loadImage("Q_Key_Yellow.png");
  R_yellow = loadImage("R_Key_Yellow.png");
  S_yellow = loadImage("S_Key_Yellow.png");
  T_yellow = loadImage("T_Key_Yellow.png");
  U_yellow = loadImage("U_Key_Yellow.png");
  V_yellow = loadImage("V_Key_Yellow.png");
  W_yellow = loadImage("W_Key_Yellow.png");
  X_yellow = loadImage("X_Key_Yellow.png");
  Y_yellow = loadImage("Y_Key_Yellow.png");
  Z_yellow = loadImage("Z_Key_Yellow.png");
  Semicolon_yellow = loadImage("Semicolon_Key_Yellow.png");
  Quotes_yellow = loadImage("Quotes_Key_Yellow.png");
  LeftBracket_yellow = loadImage("Leftbracket_Key_Yellow.png");
  RightBracket_yellow = loadImage("Rightbracket_Key_Yellow.png");
  Backslash_yellow = loadImage("Backslash_Key_Yellow.png");
  Comma_yellow = loadImage("Comma_Key_Yellow.png");
  Period_yellow = loadImage("Period_Key_Yellow.png");
  Forwardslash_yellow = loadImage("Forwardslash_Key_Yellow.png");
  Shift_yellow = loadImage("Shift_Key_Yellow.png");
  Control_yellow = loadImage("Control_Key_Yellow.png");
  Option_yellow = loadImage("Option_Key_Yellow.png");
  Command_yellow = loadImage("Command_Key_Yellow.png");
  Space_yellow = loadImage("Space_Key_Yellow.png");
  Return_yellow = loadImage("Return_Key_Yellow.png");
  
  
  //Misc
  Info_icon = loadImage("info_icon.png");
  Confirm_Key = loadImage("Confirm_Key.png");
  Alphanumeric_Unselected = loadImage("Alphanumeric_Tab_Unselected.png");
  Symbols_Unselected = loadImage("Symbols_Tab_Unselected.png");
  Modifiers_Unselected = loadImage("Modifiers_Tab_Unselected.png");
  Alphanumeric_Selected = loadImage("Alphanumeric_Tab_Selected.png");
  Symbols_Selected = loadImage("Symbols_Tab_Selected.png");
  Modifiers_Selected = loadImage("Modifiers_Tab_Selected.png");
  Clear_Key = loadImage("Clear_Key.png");
  
  // Loading Image Arrays
  TopKeyboardBlack[0] = tilde_black;
  TopKeyboardBlack[1] = One_black;
  TopKeyboardBlack[2] = Two_black;
  TopKeyboardBlack[3] = Three_black;
  TopKeyboardBlack[4] = Four_black;
  TopKeyboardBlack[5] = Five_black;
  TopKeyboardBlack[6] = Six_black;
  TopKeyboardBlack[7] = Seven_black;
  TopKeyboardBlack[8] = Eight_black;
  TopKeyboardBlack[9] = Nine_black;
  TopKeyboardBlack[10] = Zero_black;
  TopKeyboardBlack[11] = Dash_black;
  TopKeyboardBlack[12] = Equal_black;
  
  TopKeyboardBlack[26] = A_black;
  TopKeyboardBlack[27] = S_black;
  TopKeyboardBlack[28] = D_black;
  TopKeyboardBlack[29] = F_black;
  TopKeyboardBlack[30] = G_black;
  TopKeyboardBlack[31] = H_black;
  TopKeyboardBlack[32] = J_black;
  TopKeyboardBlack[33] = K_black;
  TopKeyboardBlack[34] = L_black;
  TopKeyboardBlack[35] = Semicolon_black;
  TopKeyboardBlack[36] = Quotes_black;
  TopKeyboardBlack[37] = Return_black;
  
  TopKeyboardBlack[38] = Z_black;
  TopKeyboardBlack[39] = X_black;
  TopKeyboardBlack[40] = C_black;
  TopKeyboardBlack[41] = V_black;
  TopKeyboardBlack[42] = B_black;
  TopKeyboardBlack[43] = N_black;
  TopKeyboardBlack[44] = M_black;
  TopKeyboardBlack[45] = Comma_black;
  TopKeyboardBlack[46] = Period_black;
  TopKeyboardBlack[47] = Forwardslash_black;
  
  TopKeyboardBlack[48] = Shift_black;
  TopKeyboardBlack[49] = Control_black;
  TopKeyboardBlack[50] = Option_black;
  TopKeyboardBlack[51] = Command_black;
  TopKeyboardBlack[52] = Space_black;
  TopKeyboardBlack[53] = Command_black;
  TopKeyboardBlack[54] = Option_black;
  
  // Yellow Array
  TopKeyboardYellow[0] = tilde_yellow;
  TopKeyboardYellow[1] = One_yellow;
  TopKeyboardYellow[2] = Two_yellow;
  TopKeyboardYellow[3] = Three_yellow;
  TopKeyboardYellow[4] = Four_yellow;
  TopKeyboardYellow[5] = Five_yellow;
  TopKeyboardYellow[6] = Six_yellow;
  TopKeyboardYellow[7] = Seven_yellow;
  TopKeyboardYellow[8] = Eight_yellow;
  TopKeyboardYellow[9] = Nine_yellow;
  TopKeyboardYellow[10] = Zero_yellow;
  TopKeyboardYellow[11] = Dash_yellow;
  TopKeyboardYellow[12] = Equal_yellow;
  
  TopKeyboardYellow[13] = Q_yellow;
  TopKeyboardYellow[14] = W_yellow;
  TopKeyboardYellow[15] = E_yellow;
  TopKeyboardYellow[16] = R_yellow;
  TopKeyboardYellow[17] = T_yellow;
  TopKeyboardYellow[18] = Y_yellow;
  TopKeyboardYellow[19] = U_yellow;
  TopKeyboardYellow[20] = I_yellow;
  TopKeyboardYellow[21] = O_yellow;
  TopKeyboardYellow[22] = P_yellow;
  TopKeyboardYellow[23] = LeftBracket_yellow;
  TopKeyboardYellow[24] = RightBracket_yellow;
  TopKeyboardYellow[25] = Backslash_yellow;
  
  TopKeyboardYellow[26] = A_yellow;
  TopKeyboardYellow[27] = S_yellow;
  TopKeyboardYellow[28] = D_yellow;
  TopKeyboardYellow[29] = F_yellow;
  TopKeyboardYellow[30] = G_yellow;
  TopKeyboardYellow[31] = H_yellow;
  TopKeyboardYellow[32] = J_yellow;
  TopKeyboardYellow[33] = K_yellow;
  TopKeyboardYellow[34] = L_yellow;
  TopKeyboardYellow[35] = Semicolon_yellow;
  TopKeyboardYellow[36] = Quotes_yellow;
  TopKeyboardYellow[37] = Return_yellow;
  
  TopKeyboardYellow[38] = Z_yellow;
  TopKeyboardYellow[39] = X_yellow;
  TopKeyboardYellow[40] = C_yellow;
  TopKeyboardYellow[41] = V_yellow;
  TopKeyboardYellow[42] = B_yellow;
  TopKeyboardYellow[43] = N_yellow;
  TopKeyboardYellow[44] = M_yellow;
  TopKeyboardYellow[45] = Comma_yellow;
  TopKeyboardYellow[46] = Period_yellow;
  TopKeyboardYellow[47] = Forwardslash_yellow;
  
  TopKeyboardYellow[48] = Shift_yellow;
  TopKeyboardYellow[49] = Control_yellow;
  TopKeyboardYellow[50] = Option_yellow;
  TopKeyboardYellow[51] = Command_yellow;
  TopKeyboardYellow[52] = Space_yellow;
  TopKeyboardYellow[53] = Command_yellow;
  TopKeyboardYellow[54] = Option_yellow;
  
  // Initialize Display Keyboard to the black keyboard
  DisplayKeyboard[0] = tilde_black;
  DisplayKeyboard[1] = One_black;
  DisplayKeyboard[2] = Two_black;
  DisplayKeyboard[3] = Three_black;
  DisplayKeyboard[4] = Four_black;
  DisplayKeyboard[5] = Five_black;
  DisplayKeyboard[6] = Six_black;
  DisplayKeyboard[7] = Seven_black;
  DisplayKeyboard[8] = Eight_black;
  DisplayKeyboard[9] = Nine_black;
  DisplayKeyboard[10] = Zero_black;
  DisplayKeyboard[11] = Dash_black;
  DisplayKeyboard[12] = Equal_black;
  DisplayKeyboard[13] = Q_black;
  DisplayKeyboard[14] = W_black;
  DisplayKeyboard[15] = E_black;
  DisplayKeyboard[16] = R_black;
  DisplayKeyboard[17] = T_black;
  DisplayKeyboard[18] = Y_black;
  DisplayKeyboard[19] = U_black;
  DisplayKeyboard[20] = I_black;
  DisplayKeyboard[21] = O_black;
  DisplayKeyboard[22] = P_black;
  DisplayKeyboard[23] = LeftBracket_black;
  DisplayKeyboard[24] = RightBracket_black;
  DisplayKeyboard[25] = Backslash_black;
  DisplayKeyboard[26] = A_black;
  DisplayKeyboard[27] = S_black;
  DisplayKeyboard[28] = D_black;
  DisplayKeyboard[29] = F_black;
  DisplayKeyboard[30] = G_black;
  DisplayKeyboard[31] = H_black;
  DisplayKeyboard[32] = J_black;
  DisplayKeyboard[33] = K_black;
  DisplayKeyboard[34] = L_black;
  DisplayKeyboard[35] = Semicolon_black;
  DisplayKeyboard[36] = Quotes_black;
  DisplayKeyboard[37] = Return_black;
  DisplayKeyboard[38] = Z_black;
  DisplayKeyboard[39] = X_black;
  DisplayKeyboard[40] = C_black;
  DisplayKeyboard[41] = V_black;
  DisplayKeyboard[42] = B_black;
  DisplayKeyboard[43] = N_black;
  DisplayKeyboard[44] = M_black;
  DisplayKeyboard[45] = Comma_black;
  DisplayKeyboard[46] = Period_black;
  DisplayKeyboard[47] = Forwardslash_black;
  DisplayKeyboard[48] = Shift_black;
  DisplayKeyboard[49] = Control_black;
  DisplayKeyboard[50] = Option_black;
  DisplayKeyboard[51] = Command_black;
  DisplayKeyboard[52] = Space_black;
  DisplayKeyboard[53] = Command_black;
  DisplayKeyboard[54] = Option_black;
  
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
  //General UI Draw
  background(greyBlue25);
  fill(greyBlue50);
  noStroke();
  textFont(font);
  rect(853,0,447,780);
  fill(greyBlue75);
  rect(853,67,447,780);
  image(Info_icon, 801, 16, 35,35);
  cp5.draw();
  
  //Mode Checks
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
  drawPopup();
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
  image(DisplayKeyboard[0], 99, 223, 39,39);
  image(DisplayKeyboard[1], 145, 223, 39,39);
  image(DisplayKeyboard[2], 191, 223, 39,39);
  image(DisplayKeyboard[3], 237, 223, 39,39);
  image(DisplayKeyboard[4], 283, 223, 39,39);
  image(DisplayKeyboard[5], 329, 223, 39,39);
  image(DisplayKeyboard[6], 375, 223, 39,39);
  image(DisplayKeyboard[7], 421, 223, 39,39);
  image(DisplayKeyboard[8], 467, 223, 39,39);
  image(DisplayKeyboard[9], 513, 223, 39,39);
  image(DisplayKeyboard[10], 559, 223, 39,39);
  image(DisplayKeyboard[11], 605, 223, 39,39);
  image(DisplayKeyboard[12], 651, 223, 39,39);
  
  image(DisplayKeyboard[13], 168, 269, 39, 39);
  image(DisplayKeyboard[14], 214, 269, 39, 39);
  image(DisplayKeyboard[15], 260, 269, 39, 39);
  image(DisplayKeyboard[16], 306, 269, 39, 39);
  image(DisplayKeyboard[17], 352, 269, 39, 39);
  image(DisplayKeyboard[18], 398, 269, 39, 39);
  image(DisplayKeyboard[19], 444, 269, 39, 39);
  image(DisplayKeyboard[20], 490, 269, 39, 39);
  image(DisplayKeyboard[21], 536, 269, 39, 39);
  image(DisplayKeyboard[22], 582, 269, 39, 39);
  image(DisplayKeyboard[23], 628, 269, 39, 39);
  image(DisplayKeyboard[24], 674, 269, 39, 39);
  image(DisplayKeyboard[25], 720, 269, 39, 39);
  
  image(DisplayKeyboard[26], 191, 315, 39, 39);
  image(DisplayKeyboard[27], 237, 315, 39, 39);
  image(DisplayKeyboard[28], 283, 315, 39, 39);
  image(DisplayKeyboard[29], 329, 315, 39, 39);
  image(DisplayKeyboard[30], 375, 315, 39, 39);
  image(DisplayKeyboard[31], 421, 315, 39, 39);
  image(DisplayKeyboard[32], 467, 315, 39, 39);
  image(DisplayKeyboard[33], 513, 315, 39, 39);
  image(DisplayKeyboard[34], 559, 315, 39, 39);
  image(DisplayKeyboard[35], 605, 315, 39, 39);
  image(DisplayKeyboard[36], 651, 315, 39, 39);
  image(DisplayKeyboard[37], 697, 315, 66, 39);
  
  image(DisplayKeyboard[38], 214, 361, 39, 39);
  image(DisplayKeyboard[39], 260, 361, 39, 39);
  image(DisplayKeyboard[40], 306, 361, 39, 39);
  image(DisplayKeyboard[41], 352, 361, 39, 39);
  image(DisplayKeyboard[42], 398, 361, 39, 39);
  image(DisplayKeyboard[43], 444, 361, 39, 39);
  image(DisplayKeyboard[44], 490, 361, 39, 39);
  image(DisplayKeyboard[45], 536, 361, 39, 39);
  image(DisplayKeyboard[46], 582, 361, 39, 39);
  image(DisplayKeyboard[47], 628, 361, 39, 39);
  
  image(DisplayKeyboard[48], 129, 407, 78, 39);
  image(DisplayKeyboard[49], 147, 467, 44, 39);
  image(DisplayKeyboard[50], 202, 467, 44, 39);
  image(DisplayKeyboard[51], 256, 467, 56, 39);
  image(DisplayKeyboard[52], 322, 467, 156, 39);
  image(DisplayKeyboard[53], 555, 467, 56, 39);
  image(DisplayKeyboard[54], 621, 467, 44, 39);
}
void drawTester(){
  image(Clear_Key, 650 , 145, 78, 36);
  input.show();
}
void clear() {
  cp5.get(Textfield.class,"Input").clear();
}
void drawPopup(){
  if(infoPopup){
  pushMatrix();
  fill(greyBlue50);
  rect(100, 226, 670, 278);
  textAlign(CENTER);
  fill(white);
  textSize(20);
  text("How to use:\nClick on any key in the top palette that you would like to change.\nThen, select your replacement key in the bottom palette. The new key\nwill be automatically saved and ready for use!",
       430, 310);
  image(Confirm_Key, 675, 448, 78, 36);
  popMatrix();
  }
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
  //801, 16, 35,35
  if(pmouseX > 801 && pmouseX < 836 && pmouseY > 16 && pmouseY < 51){
    if(!infoPopup){
      infoPopup = true;
    }
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
  if(alphanumericTab){
    if(pmouseX > 873 && pmouseX < 912 && pmouseY > 89 && pmouseY < 128){
      DisplayKeyboard[pickedIndex] = One_black;
    }
  }
  if(symbolsTab){
    if(pmouseX > 873 && pmouseX < 912 && pmouseY > 89 && pmouseY < 128){
      print("symbol");
    }
  }
  if(modifiersTab){
    if(pmouseX > 873 && pmouseX < 912 && pmouseY > 183 && pmouseY < 222){
      print("modifiers");
    }
  }
  
  // Key Selection
  // First Row
  if(pmouseX > 99 && pmouseX < 138 && pmouseY > 223 && pmouseY < 262){
    DisplayKeyboard[0] = TopKeyboardYellow[0];
    pickedIndex = 0;
    println("0");
  }
  // Second Row
  // Third Row
  
  if(testerMode){
      if(pmouseX > 650 && pmouseX < 728 && pmouseY > 145 && pmouseY < 181){
      clear();
      }
  }
  
  
}

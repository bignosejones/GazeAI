PImage rightEyeSquint;
PImage leftEyeSquint;
PImage rightEye;
PImage leftEye;
PImage rightEyeN;
PImage leftEyeN;
PImage rightEyeNE;
PImage leftEyeNE;
PImage rightEyeE;
PImage leftEyeE;
PImage rightEyeSE;
PImage leftEyeSE;
PImage rightEyeS;
PImage leftEyeS;
PImage rightEyeSW;
PImage leftEyeSW;
PImage rightEyeW;
PImage leftEyeW;
PImage rightEyeNW;
PImage leftEyeNW;
PImage rightEyeAN;
PImage leftEyeAN;
PImage rightEyeANE;
PImage leftEyeANE;
PImage rightEyeAE;
PImage leftEyeAE;
PImage rightEyeASE;
PImage leftEyeASE;
PImage rightEyeAS;
PImage leftEyeAS;
PImage rightEyeASW;
PImage leftEyeASW;
PImage rightEyeAW;
PImage leftEyeAW;
PImage rightEyeANW;
PImage leftEyeANW;
PImage rightEyeAngry;
PImage leftEyeAngry;
PImage rightEyeDrowsy;
PImage leftEyeDrowsy;
PImage rightEyeSleep;
PImage leftEyeSleep;
PImage spiralBG;
PImage theaterBG;
PImage galleryBG;
PImage starBG;
PImage lightBG;
PImage sugarBG;
PImage bonesBG;
PImage billBG;
int leftEyeLeftBound;
int leftEyeRightBound;
int leftEyeTopBound;
int leftEyeBotBound;
int rightEyeLeftBound;
int rightEyeRightBound;
int rightEyeTopBound;
int rightEyeBotBound;
int rightEyeCenterX;
int rightEyeCenterY;
int leftEyeCenterX;
int leftEyeCenterY;
int scrollCheck;
int sleepCheck;
int rageCount = 0;
int bgInt = 0;
float rVecX;
float rVecY;
float lVecX;
float lVecY;
float thetaR;
float thetaL;


void setup() {
  fullScreen();
  background(0);
  frameRate(30);

  //loads images
  rightEyeSquint = loadImage("R_squint.jpg");
  rightEye = loadImage("R_N_forward.jpg");
  leftEyeSquint = loadImage("L_squint.jpg");
  leftEye = loadImage("L_N_forward.jpg");
  rightEyeN = loadImage("R_N_n.jpg");
  leftEyeN = loadImage("L_N_n.jpg");
  rightEyeNE = loadImage("R_N_ne.jpg");
  leftEyeNE = loadImage("L_N_ne.jpg");
  rightEyeE = loadImage("R_N_e.jpg");
  leftEyeE = loadImage("L_N_e.jpg");
  rightEyeSE = loadImage("R_N_se.jpg");
  leftEyeSE = loadImage("L_N_se.jpg");
  rightEyeS = loadImage("R_N_s.jpg");
  leftEyeS = loadImage("L_N_s.jpg");
  rightEyeSW = loadImage("R_N_sw.jpg");
  leftEyeSW = loadImage("L_N_sw.jpg");
  rightEyeW = loadImage("R_N_w.jpg");
  leftEyeW = loadImage("L_N_w.jpg");
  rightEyeNW = loadImage("R_N_nw.jpg");
  leftEyeNW = loadImage("L_N_nw.jpg");
  rightEyeAN = loadImage("R_A_n.jpg");
  leftEyeAN = loadImage("L_A_n.jpg");
  rightEyeANE = loadImage("R_A_ne.jpg");
  leftEyeANE = loadImage("L_A_ne.jpg");
  rightEyeAE = loadImage("R_A_e.jpg");
  leftEyeAE = loadImage("L_A_e.jpg");
  rightEyeASE = loadImage("R_A_se.jpg");
  leftEyeASE = loadImage("L_A_se.jpg");
  rightEyeAS = loadImage("R_A_s.jpg");
  leftEyeAS = loadImage("L_A_s.jpg");
  rightEyeASW = loadImage("R_A_sw.jpg");
  leftEyeASW = loadImage("L_A_sw.jpg");
  rightEyeAW = loadImage("R_A_w.jpg");
  leftEyeAW = loadImage("L_A_w.jpg");
  rightEyeANW = loadImage("R_A_nw.jpg");
  leftEyeANW = loadImage("L_A_nw.jpg");
  rightEyeAngry = loadImage("R_A_forward.jpg");
  leftEyeAngry = loadImage("L_A_forward.jpg");
  rightEyeDrowsy = loadImage("R_drowsy.jpg");
  leftEyeDrowsy = loadImage("L_drowsy.jpg");
  rightEyeSleep = loadImage("R_sleep.jpg");
  leftEyeSleep = loadImage("L_sleep.jpg");
  spiralBG = loadImage("spiral_bg.jpeg");
  theaterBG = loadImage("theater_bg.jpeg");
  galleryBG = loadImage("gallery_bg.jpeg");
  starBG = loadImage("starry_bg.jpeg");
  lightBG = loadImage("light_bg.jpeg");
  sugarBG = loadImage("sugar_bg.jpeg");
  bonesBG = loadImage("bones_bg.jpeg");
  billBG = loadImage("billboard_bg.jpeg");

  spiralBG.resize(displayWidth, displayHeight);
  theaterBG.resize(displayWidth, displayHeight);
  galleryBG.resize(displayWidth, displayHeight);
  starBG.resize(displayWidth, displayHeight);
  lightBG.resize(displayWidth, displayHeight);
  sugarBG.resize(displayWidth, displayHeight);
  bonesBG.resize(displayWidth, displayHeight);
  billBG.resize(displayWidth, displayHeight);
}

void draw() {

  //background selection
  switch(bgInt) {
  case 0:
    background(255, 255, 255);
    break;
  case 1:
    background(255, 0, 0);
    break;
  case 2:
    background(galleryBG);
    break;
  case 3:
    background(theaterBG);
    break;
  case 4:
    background(spiralBG);
    break;
  case 5:
    background(starBG);
    break;
  case 6:
    background(lightBG);
    break;
  case 7:
    background(sugarBG);
    break;
  case 8:
    background(bonesBG);
    break;
  case 9:
    background(billBG);
    break;
  }

  //background change buttons
  fill(153);
  noStroke();
  triangle(5, 25, 15, 10, 15, 40);
  triangle(20, 10, 20, 40, 30, 25);


  //loads initial eye images, checks if eyes are angry
  imageMode(CORNER);
  if (rageCount < 100) {
    image(leftEye, ((displayWidth/4)-100), ((displayHeight/2)-100), 200, 200);
    image(rightEye, ((3*displayWidth/4)-100), ((displayHeight/2)-100), 200, 200);
  } else {
    image(leftEyeAngry, ((displayWidth/4)-100), ((displayHeight/2)-100), 200, 200);
    image(rightEyeAngry, ((3*displayWidth/4)-100), ((displayHeight/2)-100), 200, 200);
  }


  //image boundaries for left and right eyes
  leftEyeRightBound = ((displayWidth/4)+100);
  leftEyeLeftBound = ((displayWidth/4)-100);
  leftEyeTopBound = ((displayHeight/2)-100);
  leftEyeBotBound = ((displayHeight/2)+100);
  rightEyeRightBound = ((3*displayWidth/4)+100);
  rightEyeLeftBound = ((3*displayWidth/4)-100);
  rightEyeTopBound = leftEyeTopBound;
  rightEyeBotBound = leftEyeBotBound;


  //image centers for left and right eyes
  leftEyeCenterX = (displayWidth/4);
  leftEyeCenterY = (displayHeight/2);
  rightEyeCenterX = (3*displayWidth/4);
  rightEyeCenterY = leftEyeCenterY;


  //click squint functions
  if ((mouseX <= leftEyeRightBound) && (mouseX >= leftEyeLeftBound)
    && (mouseY >= leftEyeTopBound) && (mouseY <= leftEyeBotBound) && (mousePressed == true)) {
    rageCount++;
    image(leftEyeSquint, leftEyeLeftBound, leftEyeTopBound, 200, 200);
    sleepCheck = 0;
  }
  if ((mouseX <= rightEyeRightBound) && (mouseX >= rightEyeLeftBound)
    && (mouseY >= rightEyeTopBound) && (mouseY <= rightEyeBotBound) && (mousePressed == true)) {
    rageCount++;
    image(rightEyeSquint, rightEyeLeftBound, rightEyeTopBound, 200, 200);
    sleepCheck = 0;
  }


  //vector initializations
  rVecX = (mouseX - rightEyeCenterX);
  rVecY = (mouseY - rightEyeCenterY);
  lVecX = (mouseX - leftEyeCenterX);
  lVecY = (mouseY - rightEyeCenterY);


  //angle calcultions
  thetaR = -atan2(rVecY, rVecX);
  thetaL = -atan2(lVecY, lVecX);


  //mouse tracking
  if (((mouseY < rightEyeTopBound) || (mouseY > rightEyeBotBound)) || ((mouseX < rightEyeLeftBound) && (mouseX > leftEyeRightBound))
    || (mouseX < leftEyeLeftBound) || (mouseX > rightEyeRightBound)) {
    if (rageCount < 100) {
      if (mouseX > displayWidth/2) {
        if ((thetaR > 3*PI/8) && (thetaR < 5*PI/8)) {
          image(rightEyeN, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeNE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > PI/8) && (thetaR < 3*PI/8)) {
          image(rightEyeNE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeNE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -PI/8) && (thetaR < PI/8)) {
          image(rightEyeE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -3*PI/8) && (thetaR < -PI/8)) {
          image(rightEyeSE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeSE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -5*PI/8) && (thetaR < -3*PI/8)) {
          image(rightEyeS, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeSE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -7*PI/8) && (thetaR < -5*PI/8)) {
          image(rightEyeSW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeSE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > 7*PI/8) || (thetaR < -7*PI/8)) {
          image(rightEyeW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > 5*PI/8) && (thetaR < 7*PI/8)) {
          image(rightEyeNW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeNE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        }
      } else {
        if ((thetaL > -PI/8) && (thetaL < PI/8)) {
          image(leftEyeE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 3*PI/8) && (thetaL < 5*PI/8)) {
          image(leftEyeN, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeNW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > PI/8) && (thetaL < 3*PI/8)) {
          image(leftEyeNE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeNW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 3*PI/8) && (thetaL < 5*PI/8)) {
          image(leftEyeN, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeNW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 5*PI/8) && (thetaL < 7*PI/8)) {
          image(leftEyeNW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeNW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 7*PI/8) || (thetaL < -7*PI/8)) {
          image(leftEyeW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -3*PI/8) && (thetaL < -PI/8)) {
          image(leftEyeSE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeSW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -5*PI/8) && (thetaL < -3*PI/8)) {
          image(leftEyeS, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeSW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -7*PI/8) && (thetaL < -5*PI/8)) {
          image(leftEyeSW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeSW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        }
      }
    } else {
      if (mouseX > displayWidth/2) {
        if ((thetaR > 3*PI/8) && (thetaR < 5*PI/8)) {
          image(rightEyeAN, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeANE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > PI/8) && (thetaR < 3*PI/8)) {
          image(rightEyeANE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeANE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -PI/8) && (thetaR < PI/8)) {
          image(rightEyeAE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeAE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -3*PI/8) && (thetaR < -PI/8)) {
          image(rightEyeASE, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeASE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -5*PI/8) && (thetaR < -3*PI/8)) {
          image(rightEyeAS, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeASE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > -7*PI/8) && (thetaR < -5*PI/8)) {
          image(rightEyeASW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeASE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > 7*PI/8) || (thetaR < -7*PI/8)) {
          image(rightEyeAW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeAE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        } else if ((thetaR > 5*PI/8) && (thetaR < 7*PI/8)) {
          image(rightEyeANW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
          image(leftEyeANE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
        }
      } else {
        if ((thetaL > -PI/8) && (thetaL < PI/8)) {
          image(leftEyeAE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeAW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 3*PI/8) && (thetaL < 5*PI/8)) {
          image(leftEyeAN, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeANW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > PI/8) && (thetaL < 3*PI/8)) {
          image(leftEyeANE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeANW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 3*PI/8) && (thetaL < 5*PI/8)) {
          image(leftEyeAN, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeANW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 5*PI/8) && (thetaL < 7*PI/8)) {
          image(leftEyeANW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeANW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > 7*PI/8) || (thetaL < -7*PI/8)) {
          image(leftEyeAW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeAW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -3*PI/8) && (thetaL < -PI/8)) {
          image(leftEyeASE, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeASW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -5*PI/8) && (thetaL < -3*PI/8)) {
          image(leftEyeAS, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeASW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        } else if ((thetaL > -7*PI/8) && (thetaL < -5*PI/8)) {
          image(leftEyeASW, leftEyeLeftBound, leftEyeTopBound, 200, 200);
          image(rightEyeASW, rightEyeLeftBound, rightEyeTopBound, 200, 200);
        }
      }
    }
  }


  //inactivity response
  if (((pmouseX == mouseX) && (pmouseY == mouseY)) && (rageCount < 100)) {
    sleepCheck++;
    if (sleepCheck > 200) {
      image(leftEyeDrowsy, leftEyeLeftBound, leftEyeTopBound, 200, 200);
      image(rightEyeDrowsy, rightEyeLeftBound, rightEyeTopBound, 200, 200);
    }
    if (sleepCheck > 310) {
      image(leftEyeSleep, leftEyeLeftBound, leftEyeTopBound, 200, 200);
      image(rightEyeSleep, rightEyeLeftBound, rightEyeTopBound, 200, 200);
    }
  } else {
    sleepCheck = 0;
  }

  //keypeek if statement
  if (keyPressed == true) {
    if (rageCount < 100) {
      image(leftEyeS, leftEyeLeftBound, leftEyeTopBound, 200, 200);
      image(rightEyeS, rightEyeLeftBound, rightEyeTopBound, 200, 200);
    } else {
      image(leftEyeAS, leftEyeLeftBound, leftEyeTopBound, 200, 200);
      image(rightEyeAS, rightEyeLeftBound, rightEyeTopBound, 200, 200);
    }
  }
}

//clicking conditions for cycling backgrounds
void mouseClicked() {
  if (((mouseX >= 5) && (mouseX <= 15)) && ((mouseY >= 10) && (mouseY <= 40))) {
    if (bgInt == 0) {
      bgInt = 9;
      sleepCheck = 0;
    } else {
      bgInt--;
      sleepCheck = 0;
    }
  } else if (((mouseX >= 20) && (mouseX <= 30)) && ((mouseY >= 10) && (mouseY <= 40))) {
    if (bgInt == 9) {
      bgInt = 0;
      sleepCheck = 0;
    } else {
      bgInt++;
      sleepCheck = 0;
    }
  }
}

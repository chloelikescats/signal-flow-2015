import oscP5.*;
import netP5.*;
import processing.video.*;
import processing.serial.*;

OscP5 osc;
NetAddress supercollider;

Serial myPort;
volatile char movieTriggerCode;
volatile char receivedByte;

int x = 500;
int cRadius = 770;
int y = 380;
int i;


Movie myMovie[];
int index = 0;
//float t0;
//float t;

void setup()
{
  size(displayWidth, displayHeight, P3D);
  smooth();
  noStroke();
  background(0);
  fill(0);

  // Create OSC path, assign NetAddress, set rate.
  osc = new OscP5(this, 12000);
  supercollider = new NetAddress("127.0.0.1", 57120);

  // Serial Port assignment, set baud rate
  //println(myPort.list());
  String portName = Serial.list()[9];
  myPort = new Serial(this, portName, 9600);

  //Create array for movie files, set range.
  myMovie = new Movie[70];

  //index template:
  //myMovie[] = new Movie(this, " .mov");
  //myMovie[].stop();

  myMovie[0] = new Movie(this, "ArmInjury.mov");
  myMovie[1] = new Movie(this, "Baby1.mov");
  myMovie[2] = new Movie(this, "BabyKiss.mov");
  myMovie[3] = new Movie(this, "BirthdayCandles.mov");
  myMovie[4] = new Movie(this, "BirthdayParty1.mov");
  myMovie[5] = new Movie(this, "BowArrow.mov");
  myMovie[6] = new Movie(this, "Champagne.mov");
  myMovie[7] = new Movie(this, "ChandelierTree.mov");
  myMovie[8] = new Movie(this, "Chickens.mov");
  myMovie[9] = new Movie(this, "Christmas.mov");
  myMovie[10] = new Movie(this, "CigarMen1.mov");
  myMovie[11] = new Movie(this, "CigarMen2.mov");
  myMovie[12] = new Movie(this, "Clock.mov");
  myMovie[13] = new Movie(this, "Coliseum.mov");
  myMovie[14] = new Movie(this, "ConcreteSitting.mov");
  myMovie[15] = new Movie(this, "CoupleFlower.mov");
  myMovie[16] = new Movie(this, "DeerMeadow.mov");
  myMovie[17] = new Movie(this, "Doris.mov");
  myMovie[18] = new Movie(this, "Eggplant.mov");
  myMovie[19] = new Movie(this, "EyepatchEater.mov");
  myMovie[20] = new Movie(this, "FamilyDesert.mov");
  myMovie[21] = new Movie(this, "FencePeep.mov");
  myMovie[22] = new Movie(this, "FishCouple.mov");
  myMovie[23] = new Movie(this, "FishMan.mov");
  myMovie[24] = new Movie(this, "FlowerChild.mov");
  myMovie[25] = new Movie(this, "FlowerFamily.mov");
  myMovie[26] = new Movie(this, "FlowerGirl.mov");
  myMovie[27] = new Movie(this, "FlowerMom.mov");
  myMovie[28] = new Movie(this, "FlowerSpin.mov");
  myMovie[29] = new Movie(this, "FlowerStand.mov");
  myMovie[30] = new Movie(this, "Garden1.mov");
  myMovie[31] = new Movie(this, "GirlFountain.mov");
  myMovie[32] = new Movie(this, "GirlGroup.mov");
  myMovie[33] = new Movie(this, "GirlSmile.mov");
  myMovie[34] = new Movie(this, "GoofyGlasses.mov");
  myMovie[35] = new Movie(this, "Graduation1.mov");
  myMovie[36] = new Movie(this, "Graduation2.mov");
  myMovie[37] = new Movie(this, "HairMan.mov");
  myMovie[38] = new Movie(this, "HappyDog.mov");
  myMovie[39] = new Movie(this, "Honeymoon1.mov");
  myMovie[40] = new Movie(this, "Honeymoon2.mov");
  myMovie[41] = new Movie(this, "Kitty1.mov");
  myMovie[42] = new Movie(this, "Kitty2.mov");
  myMovie[43] = new Movie(this, "LadyFlowers.mov");
  myMovie[44] = new Movie(this, "LadySmile.mov");
  myMovie[45] = new Movie(this, "LadyTea.mov");
  myMovie[46] = new Movie(this, "LivestockOverhead.mov");
  myMovie[47] = new Movie(this, "LogTruck.mov");
  myMovie[48] = new Movie(this, "Mooseheart.mov");
  myMovie[49] = new Movie(this, "Ohio1.mov");
  myMovie[50] = new Movie(this, "Ohio2.mov");
  myMovie[51] = new Movie(this, "PinkPhone.mov");
  myMovie[52] = new Movie(this, "Plane1.mov");
  myMovie[53] = new Movie(this, "Roadtrip1.mov");
  myMovie[54] = new Movie(this, "Roadtrip2.mov");
  myMovie[55] = new Movie(this, "Rushmore.mov");
  myMovie[56] = new Movie(this, "Shaving.mov");
  myMovie[57] = new Movie(this, "SinkBaby.mov");
  myMovie[58] = new Movie(this, "SmallWorld.mov");
  myMovie[59] = new Movie(this, "Strawberries.mov");
  myMovie[60] = new Movie(this, "SunBaby.mov");
  myMovie[61] = new Movie(this, "SunBathe.mov");
  myMovie[62] = new Movie(this, "SwimmersOverhead.mov");
  myMovie[63] = new Movie(this, "Tea.mov");
  myMovie[64] = new Movie(this, "TirePrank.mov");
  myMovie[65] = new Movie(this, "TreeLady.mov");
  myMovie[66] = new Movie(this, "Trolley1.mov");
  myMovie[67] = new Movie(this, "Wave1.mov");
  myMovie[68] = new Movie(this, "Wedding.mov");
  myMovie[69] = new Movie(this, "WeirdHat.mov");
}

void draw()
{
  beginShape(); 
  texture(myMovie[index]);
  textureMode(NORMAL);
  tint(255, 120);
  for (int i = 0; i<20; i++) { 
    float stepFac = 2*PI*(float(i)/20); 
    vertex(x+cRadius/2*sin(stepFac), y+cRadius/2*cos(stepFac), (sin(stepFac)+1)/2, (cos(stepFac)+1)/2);
  } 
  endShape(CLOSE);    


  if (myMovie[index].available() ) {
    myMovie[index].read();
  }

  myMovie[46].loop(); 
  index = 46;

  if (movieTriggerCode == 'a') {
    myMovie[48].loop();
    index = 48;
    //t0 = millis()/1000;
  } else {
    myMovie[48].stop();
  }

  if (movieTriggerCode == 'b') {
    myMovie[62].loop();
    index = 62;
    //t0 = millis()/1000;
  } else {
    myMovie[62].stop();
  }

  if (movieTriggerCode == 'c') {
    myMovie[0].loop();
    index = 0;
    //t0 = millis()/1000;
  } else {
    myMovie[0].stop();
  }

  if (movieTriggerCode == 'd') {
    myMovie[22].loop();
    index = 22;
    //t0 = millis()/1000;
  } else {
    myMovie[22].stop();
  }

  if (movieTriggerCode == 'e') {
    myMovie[36].loop();
    index = 36;
    //t0 = millis()/1000;
  } else {
    myMovie[36].stop();
  }

  if (movieTriggerCode == 'f') {
    myMovie[47].loop();
    index = 47;
    //t0 = millis()/1000;
  } else {
    myMovie[47].stop();
  }

  if (movieTriggerCode == 'g') {
    myMovie[64].loop();
    index = 64;
    //t0 = millis()/1000;
  } else {
    myMovie[64].stop();
  }

  if (movieTriggerCode == 'h') {
    myMovie[54].loop();
    index = 54;
    //t0 = millis()/1000;
  } else {
    myMovie[54].stop();
  }

  if (movieTriggerCode == 'i') {
    myMovie[19].loop();
    index = 19;
    //t0 = millis()/1000;
  } else {
    myMovie[19].stop();
  }

  if (movieTriggerCode == 'j') {
    myMovie[20].loop();
    index = 20;
    //t0 = millis()/1000;
  } else {
    myMovie[20].stop();
  }

  if (movieTriggerCode == 'k') {
    myMovie[32].loop();
    index = 32;
    //t0 = millis()/1000;
  } else {
    myMovie[32].stop();
  }

  if (movieTriggerCode == 'l') {
    myMovie[51].loop();
    index = 51;
    //t0 = millis()/1000;
  } else {
    myMovie[51].stop();
  }

  if (movieTriggerCode == 'm') {
    myMovie[14].loop();
    index = 14;
    //t0 = millis()/1000;
  } else {
    myMovie[14].stop();
  }

  if (movieTriggerCode == 'n') {
    myMovie[35].loop();
    index = 35;
    //t0 = millis()/1000;
  } else {
    myMovie[35].stop();
  }

  if (movieTriggerCode == 'o') {
    myMovie[8].loop();
    index = 8;
    //t0 = millis()/1000;
  } else {
    myMovie[8].stop();
  }

  if (movieTriggerCode == 'p') {
    myMovie[68].loop();
    index = 68;
    //t0 = millis()/1000;
  } else {
    myMovie[68].stop();
  }

  if (movieTriggerCode == 'q') {
    myMovie[65].loop();
    index = 65;
    //t0 = millis()/1000;
  } else {
    myMovie[65].stop();
  }

  if (movieTriggerCode == 'r') {
    myMovie[52].loop();
    index = 52;
    //t0 = millis()/1000;
  } else {
    myMovie[52].stop();
  }

  if (movieTriggerCode == 's') {
    myMovie[60].loop();
    index = 60;
    //t0 = millis()/1000;
  } else {
    myMovie[60].stop();
  }

  if (movieTriggerCode == 't') {
    myMovie[24].loop();
    index = 24;
    //t0 = millis()/1000;
  } else {
    myMovie[24].stop();
  }

  if (movieTriggerCode == 'u') {
    myMovie[34].loop();
    index = 34;
    //t0 = millis()/1000;
  } else {
    myMovie[34].stop();
  }

  if (movieTriggerCode == 'v') {
    myMovie[37].loop();
    index = 37;
    //t0 = millis()/1000;
  } else {
    myMovie[37].stop();
  }

  if (movieTriggerCode == 'w') {
    myMovie[28].loop();
    index = 28;
    //t0 = millis()/1000;
  } else {
    myMovie[28].stop();
  }

  if (movieTriggerCode == 'x') {
    myMovie[5].loop();
    index = 5;
    //t0 = millis()/1000;
  } else {
    myMovie[5].stop();
  }

  if (movieTriggerCode == 'y') {
    myMovie[58].loop();
    index = 58;
    //t0 = millis()/1000;
  } else {
    myMovie[58].stop();
  }

  if (movieTriggerCode == 'z') {
    myMovie[56].loop();
    index = 56;
    //t0 = millis()/1000;
  } else {
    myMovie[56].stop();
  }

  if (movieTriggerCode == '1') {
    myMovie[25].loop();
    index = 25;
    //t0 = millis()/1000;
  } else {
    myMovie[25].stop();
  }

  if (movieTriggerCode == '2') {
    myMovie[7].loop();
    index = 7;
    //t0 = millis()/1000;
  } else {
    myMovie[7].stop();
  }

  if (movieTriggerCode == '3') {
    myMovie[33].loop();
    index = 33;
    //t0 = millis()/1000;
  } else {
    myMovie[33].stop();
  }

  if (movieTriggerCode == '4') {
    myMovie[59].loop();
    index = 59;
    //t0 = millis()/1000;
  } else {
    myMovie[59].stop();
  }

  if (movieTriggerCode == '5') {
    myMovie[57].loop();
    index = 57;
    //t0 = millis()/1000;
  } else {
    myMovie[57].stop();
  }

  if (movieTriggerCode == '6') {
    myMovie[43].loop();
    index = 43;
    //t0 = millis()/1000;
  } else {
    myMovie[43].stop();
  }

  if (movieTriggerCode == '7') {
    myMovie[69].loop();
    index = 69;
    //t0 = millis()/1000;
  } else {
    myMovie[69].stop();
  }

  if (movieTriggerCode == '8') {
    myMovie[63].loop();
    index = 63;
    //t0 = millis()/1000;
  } else {
    myMovie[63].stop();
  }

  if (movieTriggerCode == '9') {
    myMovie[30].loop();
    index = 30;
    //t0 = millis()/1000;
  } else {
    myMovie[30].stop();
  }

  if (movieTriggerCode == '0') {
    myMovie[4].loop();
    index = 4;
    //t0 = millis()/1000;
  } else {
    myMovie[4].stop();
  }

  if (movieTriggerCode == '&') {
    myMovie[40].loop();
    index = 40;
    //t0 = millis()/1000;
  } else {
    myMovie[40].stop();
  }

  if (movieTriggerCode == '@') {
    myMovie[15].loop();
    index = 15;
    //t0 = millis()/1000;
  } else {
    myMovie[15].stop();
  }

  if (movieTriggerCode == '#') {
    myMovie[53].loop();
    index = 53;
    //t0 = millis()/1000;
  } else {
    myMovie[53].stop();
  }

  if (movieTriggerCode == '^') {
    myMovie[23].loop();
    index = 23;
    //t0 = millis()/1000;
  } else {
    myMovie[23].stop();
  }

  if (movieTriggerCode == '*') {
    myMovie[11].loop();
    index = 11;
    //t0 = millis()/1000;
  } else {
    myMovie[11].stop();
  }
  
   if (movieTriggerCode == '$') {
    myMovie[42].loop(); 
    index = 42;
  } else {
    myMovie[42].stop();
  }
  
  if (movieTriggerCode == '?') {
    myMovie[55].loop();
    index = 55;
  } else {
    myMovie[55].stop();
  }
}


//Serial Event
void serialEvent(Serial myPort) {
  if (myPort.available()>0) {
    receivedByte = (char)myPort.read();
  }
  println(receivedByte);

  if (receivedByte >= 'a' && receivedByte <='z' || receivedByte >= '0' && receivedByte <= '9' || receivedByte == '&' || receivedByte == '@' || receivedByte == '#' || receivedByte == '^' || receivedByte == '*' || receivedByte == '$' || receivedByte == '?')
  {
    movieTriggerCode = receivedByte;
  }

    if (movieTriggerCode == 'a') {
   OscMessage msg = new OscMessage("/play_a"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'b') {
   OscMessage msg = new OscMessage("/play_b"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'c') {
   OscMessage msg = new OscMessage("/play_c"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'd') {
   OscMessage msg = new OscMessage("/play_d"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'e') {
   OscMessage msg = new OscMessage("/play_e"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   if (movieTriggerCode == 'f') {
   OscMessage msg = new OscMessage("/play_f"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'g') {
   OscMessage msg = new OscMessage("/play_g"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'h') {
   OscMessage msg = new OscMessage("/play_h"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'i') {
   OscMessage msg = new OscMessage("/play_i"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'j') {
   OscMessage msg = new OscMessage("/play_j"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'k') {
   OscMessage msg = new OscMessage("/play_k"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'l') {
   OscMessage msg = new OscMessage("/play_l"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'm') {
   OscMessage msg = new OscMessage("/play_m"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'n') {
   OscMessage msg = new OscMessage("/play_n"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'o') {
   OscMessage msg = new OscMessage("/play_o"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'p') {
   OscMessage msg = new OscMessage("/play_p"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'q') {
   OscMessage msg = new OscMessage("/play_q"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'r') {
   OscMessage msg = new OscMessage("/play_r"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 's') {
   OscMessage msg = new OscMessage("/play_s"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 't') {
   OscMessage msg = new OscMessage("/play_t"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   } 
   
   if (movieTriggerCode == 'u') {
   OscMessage msg = new OscMessage("/play_u"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'v') {
   OscMessage msg = new OscMessage("/play_v"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'w') {
   OscMessage msg = new OscMessage("/play_w"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'x') {
   OscMessage msg = new OscMessage("/play_x"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'y') {
   OscMessage msg = new OscMessage("/play_y"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == 'z') {
   OscMessage msg = new OscMessage("/play_z"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '1') {
   OscMessage msg = new OscMessage("/play_aa"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '2') {
   OscMessage msg = new OscMessage("/play_bb"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '3') {
   OscMessage msg = new OscMessage("/play_cc"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '4') {
   OscMessage msg = new OscMessage("/play_dd"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '5') {
   OscMessage msg = new OscMessage("/play_ee"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '6') {
   OscMessage msg = new OscMessage("/play_ff"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '7') {
   OscMessage msg = new OscMessage("/play_gg"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '8') {
   OscMessage msg = new OscMessage("/play_hh"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '9') {
   OscMessage msg = new OscMessage("/play_ii"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   if (movieTriggerCode == '0') {
   OscMessage msg = new OscMessage("/play_jj"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(3600);
   }
   
   //YES 
   if (movieTriggerCode == '&') {
   OscMessage msg = new OscMessage("/play_kk"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(10800);
   }
   
   //NO
   if (movieTriggerCode == '@') {
   OscMessage msg = new OscMessage("/play_ll"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(7200);
   }
   
   //GOODBYE
   if (movieTriggerCode == '#') {
   OscMessage msg = new OscMessage("/play_mm"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(25200);
   }
   
   //SUN 
   if (movieTriggerCode == '^') {
   OscMessage msg = new OscMessage("/play_nn"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(10800);
   }
   
   //MOON 
   if (movieTriggerCode == '*') {
   OscMessage msg = new OscMessage("/play_oo"); // create message
   //msg.add(8);
   osc.send(msg, supercollider); //send message
   delay(14000);
   }
   
   if ( movieTriggerCode == '$') {
   OscMessage msg = new OscMessage("/play_pp");
   osc.send(msg, supercollider);
   delay(3600);
   }
      if ( movieTriggerCode == '?') {
   OscMessage msg = new OscMessage("/play_qq");
   osc.send(msg, supercollider);
   delay(3600);
   }
}


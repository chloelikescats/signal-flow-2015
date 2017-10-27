#include <Event.h>
#include <Timer.h>

Timer t;
#include <CapacitiveSensor.h>


//unsigned long previousMillis = 0; 
//long interval = 50000;
int CAP_THRESHOLD  =  100;
//#define CS(Y) CapacitiveSensor(19, Y)

//A-Z, 0-9, yes/no/goodbye, sun/moon 
CapacitiveSensor letterPin_A = CapacitiveSensor(19,2);
CapacitiveSensor letterPin_B = CapacitiveSensor(19,3);
CapacitiveSensor letterPin_C = CapacitiveSensor(19,4);
CapacitiveSensor letterPin_D = CapacitiveSensor(19,5);
CapacitiveSensor letterPin_E = CapacitiveSensor(19,6);
CapacitiveSensor letterPin_F = CapacitiveSensor(19,7);
CapacitiveSensor letterPin_G = CapacitiveSensor(19,8);
CapacitiveSensor letterPin_H = CapacitiveSensor(19,9);
CapacitiveSensor letterPin_I = CapacitiveSensor(19,10);
CapacitiveSensor letterPin_J = CapacitiveSensor(19,11);
CapacitiveSensor letterPin_K = CapacitiveSensor(19,12);
CapacitiveSensor letterPin_L = CapacitiveSensor(19,13);
CapacitiveSensor letterPin_M = CapacitiveSensor(19,14);
CapacitiveSensor letterPin_N = CapacitiveSensor(19,15);
CapacitiveSensor letterPin_O = CapacitiveSensor(19,16);
CapacitiveSensor letterPin_P = CapacitiveSensor(19,17);
CapacitiveSensor letterPin_Q = CapacitiveSensor(19,18);
CapacitiveSensor letterPin_R = CapacitiveSensor(19,20);
CapacitiveSensor letterPin_S = CapacitiveSensor(19,21);
CapacitiveSensor letterPin_T = CapacitiveSensor(19,22);
CapacitiveSensor letterPin_U = CapacitiveSensor(19,23);
CapacitiveSensor letterPin_V = CapacitiveSensor(19,24);
CapacitiveSensor letterPin_W = CapacitiveSensor(19,25);
CapacitiveSensor letterPin_X = CapacitiveSensor(19,26);
CapacitiveSensor letterPin_Y = CapacitiveSensor(19,27);
CapacitiveSensor letterPin_Z = CapacitiveSensor(19,28);
CapacitiveSensor numberPin_1 = CapacitiveSensor(19,29);
CapacitiveSensor numberPin_2 = CapacitiveSensor(19,30);
CapacitiveSensor numberPin_3 = CapacitiveSensor(19,31);
CapacitiveSensor numberPin_4 = CapacitiveSensor(19,32);
CapacitiveSensor numberPin_5 = CapacitiveSensor(19,33);
CapacitiveSensor numberPin_6 = CapacitiveSensor(19,34);
CapacitiveSensor numberPin_7 = CapacitiveSensor(19,35);
CapacitiveSensor numberPin_8 = CapacitiveSensor(19,36);
CapacitiveSensor numberPin_9 = CapacitiveSensor(19,37);
CapacitiveSensor numberPin_0 = CapacitiveSensor(19,37);
CapacitiveSensor wordPin_yes = CapacitiveSensor(19,38);
CapacitiveSensor wordPin_no = CapacitiveSensor(19,39);
CapacitiveSensor wordPin_goodbye = CapacitiveSensor(19,40);
CapacitiveSensor symbolPin_sun = CapacitiveSensor(19,41);
CapacitiveSensor symbolPin_moon = CapacitiveSensor(19,42); 

//set timer for auto retrigger.
void setup()
{
  //letterPin_A.set_CS_AutocaL_Millis(0xFFFFFFFF);  
  //begin serial  
  Serial.begin(9600);
  //establishContact();
  int tickEvent = t.every(5000, doSomething);

  int afterEvent = t.after(10000, doAfter);

}

void loop()
{
  //A
  long start = millis();
  long total_A =  letterPin_A.capacitiveSensor(30);
 //Test serial response
  //Serial.print(millis() - start);
  //Serial.print('\t');
  if (total_A > CAP_THRESHOLD)
  { 
    Serial.write('a');
    delay(10);
  }

  //B  
  long total_B=  letterPin_B.capacitiveSensor(30);
  if (total_B > CAP_THRESHOLD)
  { 
    Serial.write('b');
    delay(10);
  }

  //C 
  long total_C=  letterPin_C.capacitiveSensor(30);   
  if (total_C > CAP_THRESHOLD)
  { 
    Serial.write('c');
    delay(10);
  }

  //D  
  long total_D = letterPin_D.capacitiveSensor(30);
  if (total_D > CAP_THRESHOLD)
  { 
    Serial.write('d');
    delay(10);
  }

  //E 
  long total_E = letterPin_E.capacitiveSensor(30);
  if (total_E > CAP_THRESHOLD)
  { 
    Serial.write('e');
    delay(10);
  }

  //F
  long total_F = letterPin_F.capacitiveSensor(30);   
  if (total_F > CAP_THRESHOLD)
  { 
    Serial.write('f');
    delay(10);
  } 

  //G
  long total_G = letterPin_G.capacitiveSensor(30);
  Serial.write(millis() - start);
  Serial.write('\t');

  if (total_G > CAP_THRESHOLD)
  { 
    Serial.write('g');
    delay(10);
  }

  //H 
  long total_H = letterPin_H.capacitiveSensor(30);   
  if (total_H > CAP_THRESHOLD)
  { 
    Serial.write('h');
    delay(10);
  }

  //I
  long total_I = letterPin_I.capacitiveSensor(30);   
  if (total_I > CAP_THRESHOLD)
  { 
    Serial.write('i');
    delay(10);
  }

  //J
  long total_J = letterPin_J.capacitiveSensor(30);  
  if (total_J > CAP_THRESHOLD)
  { 
    Serial.write('j');
    delay(10);
  }

  //K 
  long total_K = letterPin_K.capacitiveSensor(30);  
  if (total_K > CAP_THRESHOLD)
  { 
    Serial.write('k');
    delay(10);
  }

  //L 
  long total_L = letterPin_L.capacitiveSensor(30);
  if (total_L > CAP_THRESHOLD)
  { 
    Serial.write('l');
    delay(10);
  }

  //M 
  long total_M = letterPin_M.capacitiveSensor(30);
  if (total_M > CAP_THRESHOLD)
  { 
    Serial.write('m');
    delay(10);
  }

  //N  
  long total_N = letterPin_N.capacitiveSensor(30);
  if (total_N > CAP_THRESHOLD)
  { 
    Serial.write('n');
    delay(10);
  }

  //O
  long total_O = letterPin_O.capacitiveSensor(30); 
  if (total_O > CAP_THRESHOLD)
  { 
    Serial.write('o');
    delay(10);
  }

  //P
  long total_P = letterPin_P.capacitiveSensor(30);
  if (total_P > CAP_THRESHOLD)
  { 
    Serial.write('p');
    delay(10);
  }

  //Q
  long total_Q = letterPin_Q.capacitiveSensor(30);
  if (total_Q > CAP_THRESHOLD)
  { 
    Serial.write('q');
    delay(10);
  }

  //R
  long total_R = letterPin_R.capacitiveSensor(30);
  if (total_R > CAP_THRESHOLD)
  { 
    Serial.write('r');
    delay(10);
  }

  //S
  long total_S = letterPin_S.capacitiveSensor(30);
  if (total_S > CAP_THRESHOLD)
  { 
    Serial.write('s');
    delay(10);
  }

  //T
  long total_T = letterPin_T.capacitiveSensor(30);
  if (total_T > CAP_THRESHOLD)
  { 
    Serial.write('t');
    delay(10);
  }

  //U
  long total_U = letterPin_U.capacitiveSensor(30);
  if (total_U > CAP_THRESHOLD)
  { 
    Serial.write('u');
    delay(10);
  }

  //V
  long total_V = letterPin_V.capacitiveSensor(30);
  if (total_V > CAP_THRESHOLD)
  { 
    Serial.write('v');
    delay(10);
  }

  //W
  long total_W = letterPin_W.capacitiveSensor(30);
  if (total_W > CAP_THRESHOLD)
  { 
    Serial.write('w');
    delay(10);
  }

  //X
  long total_X = letterPin_X.capacitiveSensor(30);
  if (total_X > CAP_THRESHOLD)
  { 
    Serial.write('x');
    delay(10);
  }

  //Y
  long total_Y = letterPin_Y.capacitiveSensor(30);
  if (total_Y > CAP_THRESHOLD)
  { 
    Serial.write('y');
    delay(10);
  }

  //Z
  long total_Z = letterPin_Z.capacitiveSensor(30);
  if (total_Z > CAP_THRESHOLD)
  { 
    Serial.write('z');
    delay(10);
  }

  //1
  long total_1 = numberPin_1.capacitiveSensor(30);
  if (total_1 > CAP_THRESHOLD)
  { 
    Serial.write('1');
    delay(10);
  }

  //2
  long total_2 = numberPin_2.capacitiveSensor(30);
  if (total_2 > CAP_THRESHOLD)
  { 
    Serial.write('2');
    delay(10);
  }

  //3
  long total_3 = numberPin_3.capacitiveSensor(30);
  if (total_3 > CAP_THRESHOLD)
  { 
    Serial.write('3');
    delay(10);
  }

  //4
  long total_4 = numberPin_4.capacitiveSensor(30);
  if (total_4 > CAP_THRESHOLD)
  { 
    Serial.write('4');
    delay(10);
  }

  //5
  long total_5 = numberPin_5.capacitiveSensor(30);
  if (total_5 > CAP_THRESHOLD)
  { 
    Serial.write('5');
    delay(10);
  }

  //6
  long total_6 = numberPin_6.capacitiveSensor(30); 
  if (total_6 > CAP_THRESHOLD)
  { 
    Serial.write('6');
    delay(10);
  }

  //7
  long total_7 = numberPin_7.capacitiveSensor(30);
  if (total_7 > CAP_THRESHOLD)
  { 
    Serial.write('7');
    delay(10);
  }

  //8
  long total_8 = numberPin_8.capacitiveSensor(30);
  if (total_8 > CAP_THRESHOLD)
  { 
    Serial.write('8');
    delay(10);
  }

  //9
  long total_9 = numberPin_9.capacitiveSensor(30);
  if (total_9 > CAP_THRESHOLD)
  { 
    Serial.write('9');
    delay(10);
  }

  //0
  long total_0 = numberPin_0.capacitiveSensor(30);
  if (total_0 > CAP_THRESHOLD)
  { 
    Serial.write('0');
    delay(10);
  }

  //Yes
  long total_yes = wordPin_yes.capacitiveSensor(30);
  if (total_yes > CAP_THRESHOLD)
  { 
    Serial.write('&');
    delay(10);
  }

  //No
  long total_no = wordPin_no.capacitiveSensor(30);
  if (total_no > CAP_THRESHOLD)
  { 
    Serial.write('@');
    delay(10);
  }

  //Goodbye
  long total_goodbye = wordPin_goodbye.capacitiveSensor(30);
  if (total_goodbye > CAP_THRESHOLD)
  { 
    Serial.write('#');
    delay(10);
  }

  //Sun
  long total_sun = symbolPin_sun.capacitiveSensor(30);
  if (total_sun > CAP_THRESHOLD)
  { 
    Serial.write('^');
    delay(10);
  }

  //Moon
  long total_moon = symbolPin_moon.capacitiveSensor(30);
  if (total_moon > CAP_THRESHOLD)
  { 
    Serial.write('*');
    delay(10);
  }

//retriggers too frequently 
  /*unsigned long currentMillis = millis();
   if(currentMillis - previousMillis > interval)
   {
   Serial.write('$');
   delay(10);
   }*/

  t.update();

  delay(100);
}

void doSomething()
{
  Serial.write('$');
}

void doAfter()
{
  Serial.write('?');
}










char tremp ;

String x1;
String x2;
String y1;
String y2;
String x3;
String x4;
String y3;
String y4;

String shape;

int led = 13 ;

void setup() {
  // put your setup code here, to run once:
  pinMode(led,OUTPUT);
  Serial.begin(9600);
}

void loop() {
while(Serial.available()){
if(Serial.available()>0){
  char c = Serial.read();
  if(c == 'L')
  {
    shape = "Line";
    if(c != 'x'){
      x1 += c;
    }
    else if(c != 'y'){
      y1 += c;
    }
    else if(c != 'x'){
      x2 += c;
    }
    else if(c != 'y'){
      y2 += c;
    }
  }
  else if(c == 'S')
  {
    shape = "Square";
    if(c != 'x'){
      x1 += c;
    }
    else if(c != 'y'){
      y1 += c;
    }
    else if(c != 'x'){
      x2 += c;
    }
    else if(c != 'y'){
      y2 += c;
    }
    else if(c != 'x'){
      x3 += c;
    }
    else if(c != 'y'){
      y3 += c;
    }
    else if(c != 'x'){
      x4 += c;
    }
    else if(c != 'y'){
      y4 += c;
    }
    }
    }
  }

  if(shape == "Line"){
    //line drawing function with paramters
    //given x1, x2, y1, y2
  }
  else if(shape == "Square"){
    //square dawing function
    //given co-ords fom x1 to x4 and same for y
  }
}


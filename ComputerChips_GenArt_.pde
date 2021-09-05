int c;
int colorr;
void setup() {
   
  size(800,800);
  background(0);
  frameRate(60);
  stroke(0);
  fill(0);
  
  drawBITCH(800);
  c = (int)random(0,4);
  colorr = (int)random(0,255);
}



void draw(){ 
  boolean done = false;
  float x = 0;
  float y=0;
  float h=0;
  float w=0; 
  while (!done){ 
    done = true;
    x = random(1,800);
    y = random(1,800);
    w = random(0,100 - (int)frameCount/500);
    h = random(0,100 - (int)frameCount/500);
    print(100 - (int)frameCount/500 + "\n");
    if ((100 - (int)frameCount/500) == 0){
       saveFrame();
       print("done");
       exit(); 
    } 
      
    for (float r = x-1; r <= x+w+1; r++) 
      for (float c = y-1; c <= y+h+1; c++){
        
        //print( get( (int)r,(int)c ) + "\n");
        
        if (get((int)r,(int)c) != -16777216)
        {
          done = false;
          c = 1000;
          r = 1000;
          //print("fook");
        }
      }
  } 
  
  print(c);
  //if (c == 0) 
  //fill(random(255),random(255),random(255));
  //else if (c==1) 
  //fill(0,y%255,0);
  //else if (c==2) 
  fill((x%255 + colorr*20)%255, (y%255 + colorr*20)%255, (colorr*20)%255);
  
  //fill((255/800*x)%255,y%255,0);
  rect(x,y,w,h);
  
}

public void drawBITCH(int size){
  
}

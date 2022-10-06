// un sketch que produzca en función a lo que ha visto previamente 

//stroke point  basado en la  probabilidad de color anterior
float x1,x2,x3;
float y1,y2,y3;
color t;
float[] distribution=new float[9000000];
float xx,yy;
void setup (){
 size(500,500);
 for (int x=0;x<distribution.length;x++){
  distribution[x]=randomGaussian();
  
 }
 println(max(distribution));
  
  
}

void draw(){
   x1=randomGaussian();
   x2=randomGaussian();
   x3=randomGaussian();
   y1=map(x1,-3,3,0,255);
   y2=map(x2,-3,3,0,255);
   y3=map(x3,-3,3,0,255);
  
   t=color(y1,y2,y3);
  fill(t);
  noStroke();
  xx=random(0,500);
  yy=random(0,500);
  rect(xx,yy,10,50);
}

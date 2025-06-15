PImage  VictorVasarelyTlinko;
int can, tam;
float  T,o;
color c1, c2,c3,c4;
boolean Random = false;

//-------------------------------


void setup (){
size(800,400);
can=50;
tam= width/can;
rectMode(CORNER);

T=20;
o+=0;
c1=color(255);
c2=color(50,10,200);
c3=color(255,20,0);
c4=color(100,0,10);
}
//----------------------------
void draw(){
background(255);
 o+=0;
  T+=1;
  //------------------
  if(o<0.5){
    background(255);
  }
  //---------------------------
if(key==' '){
o+=0.002;
   background(255,188,0);
  
}
 if(key== 'h'){
 background(255,00,00);
  
}
   if(mousePressed){
      background(255);
     reset();
   }
 
   if(key=='a'){
     aceleracion();
     
   }
   if(key=='g'){
movimiento();
   }
   
  
   //-----------------------------
  //cuadrados negros
for(int x=0;x<can+100;x++){
 for(int y=-100;y<can;y++){ 

  pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,200,200);
  float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(0);
  rotate(radians(rotacion+T));
  rect(x,y,tam,tam);
  
  popMatrix();
 
}
}



// cuadrados grises
for(int x=0;x<can+200;x++){
 for(int y=-100;y<can;y++){ 
   float distan = dist (mouseX, mouseY, x*tam, y*tam);
   float tono = distan*255/dist(width, height, 0, 0);
  fill(00);
 
 pushMatrix();
  translate(x*tam+tam/2,y*tam+tam/2);
  float largo= dist(x*tam, y*tam,0,0);
  float diag= dist(tam,0,200,200);
 float rotacion= map(largo, 0, diag, 5, 1); 
 // ...color
   
  stroke(40);
  strokeWeight(1);
  fill(250);
  rotate(radians(rotacion-T));
 rect(x,y,13,13);
  popMatrix();
 }
 }
// imagen de referencia
VictorVasarelyTlinko=loadImage("VictorVasarelyTlinko.jpg");
  image(VictorVasarelyTlinko,00,0);




//consola
println(mouseX);
println("X");
println(mouseY);
println("Y");
println(T);
println(o);
}

void reset(){
  T=0;
  o=0;
 background(255);

}
void aceleracion(){
 T+=2.5;
 o+=0.05;
 background( lerpColor(c3 ,c4 , o ) );
    if(o<0.5){
    background(200,100,45);
  }
}
void movimiento(){
  background(0,255,0);
  for(int x=10;x<can;x++){
 for(int y=10;y<can;y++){ 

  pushMatrix();
  translate(300,0);
   float distan = dist (mouseX, mouseY, x*tam, y*tam);
    float tono = distan*255/dist(width, height, 0, 0);
   
  float largo= dist(x*tam, y*tam, x*tam+2, y*tam+2);
  float diag= dist(tam,0,width,height);
  float rotacion= map(largo, 0, diag, 10, 1); 
  stroke(40);
  strokeWeight(1);
  fill(255,00,00,tono);
  rotate(radians(45*rotacion-frameCount));
  
  popMatrix();
}
}
  
  
  
  
for(int x=0;x<can;x++){
 for(int y=0;y<can;y++){ 
 
 pushMatrix();
  translate(300,0);
  float largo= dist(x*tam, y*tam, 13, 13);
  float diag= dist(tam,0,0,0);
 float rotacion= map(largo, 0, diag, 5, 1); 
  stroke(40);
  strokeWeight(1);
  fill(00);
  
 rect(x,y,tam,tam);
  popMatrix();
 }  

}
}

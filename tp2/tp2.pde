
int mivariable;
int mivariable2;
int mivariable3;
int mivariable4;
int mivariable5 = 700;
int mivariable6 = 0;

int pantalla;
int mitiempo;

PImage miImagen1;
PImage miImagen2;  
PImage miImagen3;
PImage miImagen4;
PImage miImagen5;

PFont miTexto;
PFont miTexto2;
PFont moonlightmystique;

float posX, posY;
int contador;

String texto1, texto2, texto3, texto4, textoBoton = "reiniciar!";

int px, py, ancho, alto;

boolean arranca = false;
boolean reinicio;
int segundos = 0;

int reiniciarAncho = 100;
int reiniciarAlto = 30;

void setup() { 
  size(640, 480); 
  background(255);

  mivariable = 0; 
  mivariable2 = 0; 
  mivariable3 = 0; 
  mivariable4 = 0; 
  mivariable5 = 700;
  mivariable6 = 0;
  pantalla = 0;
  mitiempo = 0;

  miImagen1 = loadImage("tp2.jpg"); 
  miImagen2 = loadImage("tp2b.jpg");  // Ahora sí cargada
  miImagen3 = loadImage("tp2c.jpg"); 
  miImagen4 = loadImage("tp2d.jpg"); 
  miImagen5 = loadImage("tp2e.jpg"); 

  miTexto = loadFont("Cambria-Italic-48.vlw"); 
  miTexto2 = loadFont("ComicSansMS-Italic-48.vlw"); 
  moonlightmystique = loadFont("Consolas-Italic-48.vlw");
  
  ancho = 200; 
  alto = 50; 
  px = 20; 
  py = 420; 

  texto1 = "quien escribio este cuento?"; 
  texto2 = "quien es la protagonista?"; 
  texto3 = "sobreviviran?"; 
  texto4 = "si capo obvio, es caperucita no una novela"; 

  textFont(loadFont("Consolas-Italic-48.vlw"));
 
  contador = 0; 
  posX = 20;  // Inicializar posX en 20 para que el texto empiece visible
  posY = 300; 
} 

void draw() { 
  if (!arranca) { 
    fill(255); 
    rect(px, py, ancho, alto); 
    fill(0); 
    image(miImagen5, 0, 0, 640, 480); 
    textSize(28); 
    text("Empezar!!", px + 20, py + 35); 
  } else { 
    mitiempo += 4; 

    if (mitiempo > 0 && mitiempo < 400) { 
      pantalla = 0; 
    } else if (mitiempo >= 400 && mitiempo < 800) { 
      pantalla = 1; 
    } else if (mitiempo >= 800 && mitiempo < 1100) { 
      pantalla = 2; 
    } else if (mitiempo >= 1100 && mitiempo < 1700) { 
      pantalla = 3; 
    } else if (mitiempo >= 1700 && mitiempo < 2300) { 
      pantalla = 4; 
    } else if (mitiempo >= 2300 && mitiempo < 3200) { 
      pantalla = 5; 
    } 

    mivariable++; 

    stroke(0); 
    strokeWeight(1); 
    fill(255); 

    switch(pantalla) {
      case 0:
        background(0); 
        image(miImagen1, 0, 0, 640, 480); 
        textFont(miTexto2); 
        textSize(20); 
        text("Caperucita, un cuento de fantacia redactado por los hermanos grimm", 100, mivariable, 400, 100); 
        int c1 = color(21, 35, 111, 255); 
        int c2 = color(203, 209, 237, 255); 
        int interColor = lerpColor(c1, c2, map(posX, 20, width, 0, 1)); 
        fill(interColor); 
        text(texto1, posX, 355, 600, 200); 
        posX += 1; 
        if (posX >= width) { 
          contador = 7; 
          posX = 20; 
          posY = 250; 
        } 
        break;
      case 1:
        background(255, 0, 0); 
        image(miImagen2, 0, 0, 640, 480); 
        textFont(miTexto2); 
        textSize(20); 
        fill(181, 184, 185); 
        text("una joven le hace el favo a la madre de llevarle comida a su abuela pero algo pasa en el camino", 20, 50, 600, 400); 
        c1 = color(191, 109, 196, 255); 
        c2 = color(146, 38, 152, 255); 
        interColor = lerpColor(c1, c2, map(posX, 20, width, 0, 1)); 
        fill(interColor); 
        textFont(moonlightmystique); 
        textSize(20); 
        text(texto2, posX, 355, 600, 200); 
        posX += 1; 
        if (posX >= width) { 
          contador = 7; 
          posX = 20; 
          posY = 250; 
        } 
        break;
      case 2:
        background(0, 255, 0); 
        image(miImagen3, 0, 0, 640, 480); 
        textFont(miTexto2); 
        textSize(25); 
        text("se encuentra a un lobo el cual la engaña para hacer tiempo e ir a comerse a su abuela, pero no termina ahi, ya que este la espera disfrazado de su reciente presa para devorarla a ella tambien.", 20, 50, 600, 400); 
        c1 = color(255, 255, 255, 255); 
        c2 = color(255, 0, 0, 0); 
        interColor = lerpColor(c1, c2, map(posX, 20, width, 0, 1)); 
        fill(interColor); 
        textFont(loadFont("Consolas-Italic-48.vlw")); 
        textSize(20); 
        text(texto3, posX, 355, 600, 200); 
        posX += 1; 
        if (posX >= width) { 
          contador = 7; 
          posX = 20; 
          posY = 250; 
        } 
        break;
      case 3:
        background(0, 255, 0); 
        image(miImagen4, 0, 0, 640, 480); 
        textFont(miTexto2); 
        textSize(25); 
        fill(214, 45, 85); 
        mivariable3--; 
        text("luego aparece un cazador que al ver la escena decide abrir el estomago de la bestia y rescatar a las pobres victimas", 20, 50, 600, 400); 
        c1 = color(220, 220, 225, 255); 
        c2 = color(255, 255, 255, 150); 
        interColor = lerpColor(c1, c2, map(posX, 20, width, 0, 1)); 
        fill(interColor); 
        textFont(moonlightmystique); 
        textSize(20); 
        text(texto4, posX, 355, 600, 200); 
        posX += 1; 
        if (posX >= width) { 
          contador = 7; 
          posX = 20; 
          posY = 250; 
        } 
        break;
      case 4:
        background(255); // Cambié a blanco para mejor visibilidad
        image(miImagen5, 0, 0, 640, 480); 
        textFont(miTexto2); 
        textSize(25); 
        fill(255, 0, 0); 
        mivariable4 = mivariable5 - 1; 
        fill(214, 91, 67); 
        text("ya a salvo, el lobo sufrio un accidente y perdio la vida, el cazador se quedo con su piel como premio y se fueron los 3 a comer la comida de la abuela", 20, 80, 600, 400); 
        c1 = color(255, 204, 193, 255); 
        c2 = color(255, 255, 255, 150); 
        interColor = lerpColor(c1, c2, map(posX, 20, width, 0, 1)); 
        fill(interColor); 
        textFont(moonlightmystique); 
        textSize(20); 
        text(texto4, posX, 355, 600, 200); 
        posX += 1; 
        if (posX >= width) { 
          contador = 7; 
          posX = 20; 
          posY = 250; 
        } 
        break;
      case 5:
        background(0, 255, 0); 
        image(miImagen5, 0, 0, 640, 480); 
        textFont(miTexto); 
        textSize(30); 
        fill(255); 
        mivariable6 = mivariable4 - 1; 
        textAlign(CENTER, CENTER);
        text("gracias por leer!!", width / 2, height / 2); 

        fill(255); 
        rect(px, py, reiniciarAncho, reiniciarAlto); 
        fill(0); 
        textSize(20); 
        textAlign(CENTER, CENTER); 
        text("Reiniciar", px + reiniciarAncho / 2, py + reiniciarAlto / 2); 
        textAlign(LEFT, BASELINE);  
        noStroke(); 
        break;
    }
  } 
} 

void mousePressed() { 
  if (!arranca && mouseX > px && mouseX < px + ancho && mouseY > py && mouseY < py + alto) { 
    arranca = true; 
    mitiempo = 1; 
    segundos = 0; 
  } else if (pantalla == 5 && mouseX > px && mouseX < px + reiniciarAncho && mouseY > py && mouseY < py + reiniciarAlto) { 
    mitiempo = 0; 
    mivariable = 0; 
    mivariable2 = 0; 
    mivariable3 = 0; 
    mivariable4 = 0; 
    mivariable5 = 700; 
    arranca = false; 
    posX = 20; 
  } 

  if (mouseX > px && mouseX < px + ancho && mouseY > py && mouseY < py + alto) { 
    segundos = 0; 
    reinicio = true; 
  } 

  println(mouseX + " " + mouseY); 
  println(frameCount); 
}

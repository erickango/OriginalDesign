void setup(){
    size(400, 400);
}
int x = 80;
int y = 200;

int z=[];
for(var i = 0; i<15; i++){
    z[i] = random(255);
}
int k = random(255);
int s = random(255);
int a = random(255);
int b = random(255);

void mouseClicked(){
    k = random(255);
    s = random(255);
    a = random(255);
    b = random(255);
    for(var i = 0; i<15; i++){
    z[i] = random(255);
    }
}

void moveWordUp(){
    y-=2;
}
void moveWordDown(){
    y+=2;
}
void moveWordLeft(){
    x-=2;
}
void moveWordRight(){
    x+=2;
}
void draw() {
    x = constrain(x, 0, 160);
    y = constrain(y, 0, 310);
    //this moves the word
    if(keyCode===UP){
        moveWordUp();
    } else if(keyCode ===DOWN){
        moveWordDown();
    } else if(keyCode===LEFT){
        moveWordLeft();
    } else if(keyCode===RIGHT){
        moveWordRight();
    }

    background(0);
    fill(255,255,255);
    rect(0, height/2, width, height/2);
    noStroke();
    fill(224, 32, 224);
    textSize(15);
    color(255, 0, 0);
    text("Use the arrow keys to move my name", 0, 50);
    text("Use the space bar to stop it from moving", 0, 80);
    text("Click anywhere on the screen to change the color", 0, 110);
    fill(b,a,b);
//the E
    rect(x, y, 10,90);
    fill(z[0],z[1],z[2]);
    rect(x, y, 50, 10);
    fill(z[1],z[2],z[3]);
    rect(x, y+40, 50, 10);
    fill(z[4],z[5],z[6]);
    rect(x, y+80, 50, 10);

//the R
    fill(a,b,a);
    rect(x+60,y, 10, 90); 
    fill(z[5],z[6],z[7]);
    rect(x+70, y, 40, 10);
    fill(z[6],z[7],z[8]);
    rect(x+110, y+10, 10,30);
    fill(z[7],z[8],z[9]);
    rect(x+60,y+40, 50, 10);
    fill(z[8],z[9],z[10]);
    rect(x+110, y+50, 10, 40);
//the I
    fill(k,s,k);
    rect(x+130,y, 50, 10);
    fill(z[9],z[10],z[11]);
    rect(x+150, y, 10, 90);
    fill(z[10],z[11],z[12]);
    rect(x+130, y+80, 50, 10);
//the C
    fill(s,k,s);
    rect(x+190, y+10, 10, 70);
    fill(z[11],z[12],z[13]);
    rect(x+200, y, 40, 10);
    fill(z[12],z[13],z[14]);
    rect(x+200, y+80, 40, 10);
    
};

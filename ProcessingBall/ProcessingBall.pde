Ball b1;
Ball[] balls;


void settings() {
  size(600, 600);
}

void setup() {
  //super.background(0);
  b1 = new Ball(color(17, 50, 230),(int)(Math.random() * width), (int)(Math.random() * height) , 5, 4);
  balls = new Ball[] {
    new Ball(color(230, 50, 17), (int)(Math.random()), (int)(Math.random()), 1, 2),
    new Ball(color(0,128,0), (int)(Math.random() * width), (int)(Math.random() * height), 1, 1),
    new Ball(color(0,255,255), (int)(Math.random() * width), (int)(Math.random() * height), 1, 1),
    new Ball(color(255,250,250), (int)(Math.random() * width), (int)(Math.random()* height), 1, 1)
  };
 

 //initial Positions. 
  b1.randomPos( 0, 0);
    for(var b : balls) {
      b.randomPos(b.x , b.y);
  } 
}

void draw() {
  background(0);
  //b1.move();
  b1.randomPos(b1.x, b1.y);
  b1.draw(super.g);
  for(var b : balls) {
        if(b1.ifCollide(b)){
          b.xSpeed *= - 1;
          b.ySpeed *= - 1;
        }
       
       for(var a : balls) {
       if( !b.equals(a) && b.ifCollide(a)){
          a.xSpeed *= - 1;
          a.ySpeed *= - 1;
        }
       }
        //b.randomPos(b.x, b.y);
        gameMove(b, b.x , b.y);
    }
    for(Ball b1 : balls) {
      gameMove(b1, b1.x , b1.y);
         b1.draw(super.g);
       
         //b1.randomPos(b1.x, b1.y);
    }
}

private void gameMove(Ball p, int x, int y) {
    int xMove = x + p.xSpeed;
    int yMove = y + p.ySpeed;
    p.randomPos(xMove, yMove);
    
    for(Ball b : balls) {
        if(b1.ifCollide(b))
            b1.xSpeed *= -1;
            b1.ySpeed *= -1;
    }
}

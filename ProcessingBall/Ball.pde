class Ball {
    int x ;
    int y ;
    int fillColor;
    int width, height;
    int xSpeed ;
    int ySpeed ;
    Ball(int fillColor, int width, int height, int xSpeed, int ySpeed) {
        this.fillColor = fillColor;
        this.width = width;
        this.height = height;
        this.randomPos(x, y);
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
        
    }
    
    void randomPos(int x, int y) {
        this.x = x + xSpeed;
        if(this.x > 600  || this.x < 0){
        xSpeed *= -1;}
        this.y =  y + ySpeed;
        if(this.y > 600 || this.y < 0){
        ySpeed *= -1; }
        
       
    }
    
    boolean ifCollide(Ball other ){
        if(dist(this.x, this.y, other.x, other.y) <= 40){
          xSpeed *= -1;
          ySpeed *= -1;
        return true;}
        else{
          return false;}
    }
    
   /*void move(){
         x += speed; 
        if(this.x > width  || this.x < 0){
        speed *= -1;}
        y += speed;
        if(this.y > height  || this.y < 0){
        speed *= -1; }
    }*/
    
    void draw(PGraphics g) {
        //frameRate(0.5);
        g.fill(this.fillColor);
        g.ellipse(this.x, this.y, 40, 40);
    }
    
}

import processing.core.PApplet;
import processing.core.PGraphics;

import static processing.core.PApplet.dist;

public class Billiardtisch extends PApplet {
    public static void main(String[] args) {
        PApplet.runSketch(new String[]{""}, new Billiardtisch());
    }

    Ball b1;
    Ball b2;
    public void settings() {
        super.size(600, 600);
    }
    public void setup() {
        super.background(0);
        this.b1 = new Ball(color(17, 50, 230), super.width, super.height,2,4);
        this.b2 = new Ball(color(230, 50, 17), super.width, super.height,5,4);
    }
    public void draw() {
        super.background(0);
        this.b1.randomPos();
        this.b1.draw(super.g);
        this.b2.randomPos();
        this.b2.draw(super.g);
    }
}

class Ball {
    int x, y;
    int fillColor;
    int widthBound, heightBound;
    float xSpeed ;
    float ySpeed ;
    Ball(int fillColor, int widthBound, int heightBound,int xSpeed,int ySpeed) {
        this.fillColor = fillColor;
        this.widthBound  = widthBound;
        this.heightBound = heightBound;
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
        this.randomPos();
    }
    void randomPos() {
        x += xSpeed;
        y += ySpeed;

        if (x < 0 || x > widthBound) {
            xSpeed *= -1;
        }

        if (y < 0  || y > heightBound) {
            ySpeed *= -1;
        }
    }

    void draw(PGraphics g) {
        g.fill(this.fillColor);
        g.ellipse(this.x, this.y, 40, 40);
    }
}
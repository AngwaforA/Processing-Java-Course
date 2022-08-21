
import processing.core.PApplet;
import processing.core.PGraphics;

public class MySketch extends PApplet {
    float x = 20;
    float y = 40;
    float speed = 25;

    public static void main(String[] args) {
        PApplet.runSketch(new String[] { "" }, new MySketch());
    }

    public void settings() {
        size(600, 600);
    }

    public void setup() {
        background(0);
    }

    public void draw() {
        x = x + speed;
        if (x > width || X < 0) {
            speed = speed * -1;
        }
        y = y + speed;
        if (y > height || y < 0) {
            speed = speed * -1;
        }
        ellipse(x, y, 100, 100);
    }
}

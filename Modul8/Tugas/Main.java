package Tugas;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        DrawingContext dc = new DrawingContext(155, 225);
        Circle circle = new Circle("Circle 1", 69, 90, dc, 13, 1);
        Rectangle rectangle = new Rectangle("Rectangle 1", 110, 55, dc);
        ArrayList<Point> points = new ArrayList<>();
        points.add(new Point(0, 0));
        points.add(new Point(25, 75));
        points.add(new Point(100, 0));
        Polygon polygon = new Polygon("Polygon 1", 169, 110, dc, points);
        circle.open();
        rectangle.open();
        polygon.open();
        circle.move(45, 69);
        rectangle.resize(225, 130);
        dc.clearScreen();
        circle.draw();
        rectangle.draw();
        polygon.draw();
        circle.handleEvent("klik mouse");
        circle.close();
        rectangle.close();
        polygon.close();
    }
}
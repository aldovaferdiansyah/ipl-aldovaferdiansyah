package Tugas;

import java.util.ArrayList;

public class Polygon extends Shape {
    private ArrayList<Point> points;

    public Polygon(String title, int width, int height,
        DrawingContext drawingContext, ArrayList<Point> points) {
        super(title, width, height, drawingContext);
        this.points = points;
    }

    @Override
    public void draw() {
        System.out.println("Menggambar poligon " + " dengan poin " + points);
    }

    @Override
    public void erase() {
        System.out.println("Menghapus poligon ");
    }

    @Override
    public void resize(int width, int height) {
    }
}
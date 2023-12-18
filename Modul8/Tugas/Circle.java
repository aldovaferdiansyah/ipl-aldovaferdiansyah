package Tugas;

public class Circle extends Shape {
    private float radius;
    private int center;

    public Circle(String title, int width, int height,
            DrawingContext drawingContext, float radius, int center) {
        super(title, width, height, drawingContext);
        this.radius = radius;
        this.center = center;
    }

 @Override
 public void draw() {
 System.out.println("Menggambar lingkaran " + " dengan jari - jari " + radius + " dan diameter " + center);
 }

    @Override
    public void erase() {
        System.out.println("Menghapus lingkaran ");
    }

    public double area(float radius) {
        return Math.PI * radius * radius;
    }

    public double circum() {
        return 2 * Math.PI * radius;
    }

    public void setCenter(int center) {
        this.center = center;
    }

    public void setRadius(float radius) {
        this.radius = radius;
    }

    @Override
    public void resize(int width, int height) {
        this.width = width;
        this.height = height;
    }
}

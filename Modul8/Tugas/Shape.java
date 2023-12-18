package Tugas;

public abstract class Shape extends Window {
    private DrawingContext drawingContext;

    public Shape(String title, int width, int height, DrawingContext drawingContext) {
        super(title, width, height);
        this.drawingContext = drawingContext;
    }

    public abstract void draw();

    public abstract void erase();

    @Override
    public void move(int x, int y) {
        System.out.println("Shape bergerak " + " ke posisi(" + x +", " + y + ")");
    }

    public abstract void resize(int width, int height);

    public DrawingContext getDrawingContext() {
        return drawingContext;
    }
}

package Tugas;

public class DrawingContext {
    private int verticalSize;
    private int horizontalSize;

    public DrawingContext(int verticalSize, int horizontalSize) {
        this.verticalSize = verticalSize;
        this.horizontalSize = horizontalSize;
    }

    public void setPoint(int x, int y, String color) {
        System.out.println("Mengatur poin di (" + x + ", " + y + ") ke warna " + color);
    }

    public void clearScreen() {
        System.out.println("Membersihkan layar");
    }

    public int getVerticalSize() {
        return verticalSize;
    }

    public int getHorizontalSize() {
        return horizontalSize;
    }
}
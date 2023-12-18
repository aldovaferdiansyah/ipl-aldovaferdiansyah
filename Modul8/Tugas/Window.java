package Tugas;

public class Window {
    private String title;
    int width;
    int height;

    public Window(String title, int width, int height) {
        this.title = title;
        this.width = width;
        this.height = height;
    }

    public void open() {
        System.out.println("Membuka jendela ");
    }

    public void close() {
        System.out.println("Menutup jendela ");
    }

    public void move(int x, int y) {
        System.out.println("Jendela bergerak " + " ke posisi (" + x
                + ", " + y + ")");
    }

    public void display() {
        System.out.println("Menampilkan jendela ");
    }

 public void handleEvent(String event) {
 System.out.println("Handling event " + event + " untuk jendela ");
 }
}

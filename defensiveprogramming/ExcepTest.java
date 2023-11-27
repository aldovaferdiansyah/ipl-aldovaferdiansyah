import java.io.*;

public class ExcepTest {
    public static void main(String args[]) {
        FileInputStream file = null;
        byte x;

        String fileName = "C:\\Users\\HP\\Pictures\\Dokumen Aldova\\3. Kuliah (S1)\\SEMESTER 5\\3. Implementasi Perangkat Lunak\\0. Praktikum\\Modul 1 (DONE)\\IPL\\defensiveprogramming\\file.txt";

        try {
            file = new FileInputStream(fileName);
            x = (byte) file.read();
        } catch (FileNotFoundException f) {
            f.printStackTrace();
        } catch (IOException i) {
            i.printStackTrace();
        } finally {
            try {
                if (file != null) {
                    file.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

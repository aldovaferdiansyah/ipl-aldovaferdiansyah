package cleancode;

public interface Point {
    double getx();
    double gety();
    void setCartesian(double x, double y);
    double getR();
    double getTheta();
    void setPolar(double r, double theta);
}
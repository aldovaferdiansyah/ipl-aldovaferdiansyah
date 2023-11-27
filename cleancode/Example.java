package cleancode;

import java.util.Scanner;

public class Example {
    public static void main(String[] args) {
        int age = 14;
        assert age <= 18 : "Cannot Vote";
        System.out.println("The voter's age is " + age);
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter ur age ");
        int value = scanner.nextInt();
        assert value >= 18 : "Not Valid";
        System.out.println("Value is " + value);
    }
}
package main.java.hangman;

import java.util.Scanner;

public class Hangman {

    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);

        System.out.println("Please choose an option: ");
        System.out.println("\t1. Login");
        System.out.println("\t2. Logout");
        System.out.println("\t3. Play again");
        System.out.println("\t4. Exit program");

        System.out.print("Your choice: ");
        int option = scanner.nextInt();
        if (option < 1 || option > 4) {
            System.out.println("You have enetered wrong option, please enter number between 1 - 4");
        } else if (option == 1) {
            System.out.println("Enter your name: ");
            String name = scanner.next();
            System.out.println("Welcome " + name + "," + "Enter your age: ");
            int age = scanner.nextInt();

        }
    }
}


//        scanner.close();
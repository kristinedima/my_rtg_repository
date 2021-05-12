import java.util.Scanner;

public class Main {
        public static void main(String[] args) {


            Scanner scanner = new Scanner(System.in);

            System.out.println("Please choose an option: ");
            System.out.println("\t1. Login");
            System.out.println("\t2. Play again");
            System.out.println("\t3. Exit program");

            System.out.print("Your choice: ");
            int option = scanner.nextInt();
            if (option < 1 || option > 3) {
                System.out.println("You have entered wrong option, please enter number between 1 - 3");
            } else if (option == 1) {
                System.out.println("Enter your name: ");
                String name = scanner.next();
                System.out.println("Enter your username: ");
                String username = scanner.next();
                System.out.println("Welcome " + username + "," + "Enter your age: ");
                int age = scanner.nextInt();}
            

        }
    }



  /*  public static void main(String[] args) {
        // Loop to allow different users to log in.
        while (true) {
            String username = login();
            playGame(username);
        }
    }

    private static void playGame(String user) {
        boolean playAgain = false;
        do {
            // Prepare game

            makeTurns(user);        // Actual game

            // Game ended....
            // What are we going to do next?
            do {
                // 1. Get next action
                // 2a. If logout: return
                // 2b. If describe: show describe info and continue.
                // 2c. If play again: playAgain = true and break
                // 2d. If incorrect option - ask again
            } while (true);
        } while (playAgain);
    }

    private static void makeTurns(String user) {
        do {
            // One iteration is one turn.
        } while(true);
    }

    private static String login() {
        // 1. Ask user to enter name
        // 2. Check if user already registered
        // 3a. Register user
        // 3b. Proceed with the user
        return null;
    }
}

}
*/

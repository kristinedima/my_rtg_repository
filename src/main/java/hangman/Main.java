package hangman;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import static hangman.SQL.*;

public class Main {
    private static final String JDBC_DRIVER = "org.h2.Driver";
    private static final String DB_URL = "jdbc:h2:./hangman";
    private static final String USER = "sa";
    private static final String PASS = "";

    static Scanner scanner = new Scanner(System.in);

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, USER, PASS);
    }

    public static void main(String[] args) {
        try (Connection connection = getConnection()) {
            prepareDatabase(connection);
            workWithConnection(connection);
        } catch (SQLException throwables) {
            System.out.println(throwables.getMessage());
            throwables.printStackTrace();
        }
    }


    private static void prepareDatabase(Connection connection) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            int updateDictionary = statement.executeUpdate(CREATE_TABLE_DICTIONARY);
            System.out.println("Table successfully created " + updateDictionary);
            int updateUsers = statement.executeUpdate(CREATE_TABLE_USERS);
            System.out.println("Table successfully created " + updateUsers);
            int updateGame = statement.executeUpdate(CREATE_TABLE_GAME);
            System.out.println("Table successfully created " + updateGame);
        }
    }

    private static void workWithConnection(Connection connection) throws SQLException {
        while (true) {
            Action nextAction = getActionFromUser();
            switch (nextAction) {
                case PRINT_COUNT_OF_GAMES_PLAYED_BY_USER:
                    printCountOfGamesPlayedByUser(connection);
                    break;
                case PRINT_COUNT_OF_USERS:
                    printCountOfUsers(connection);
                    break;
                case PRINT_COUNT_OF_WINS:
                    printCountOfWins(connection);
                    break;
                case PRINT_COUNT_OF_GUESSES:
                    printCountOfGuesses(connection);
                    break;
                case LOGIN:
                    login();
                    break;
                case LOGOUT:
                    logout();
                    break;
                case PLAY_GAME:
                    playGame();
                    break;
                case EXIT:
                    return;
            }
        }
    }

    //working on these.
    private static void playGame() {
    }

    private static void logout() {
    }

    private static void login() {
    }

    private static Action getActionFromUser() {
        while (true) {
            System.out.println("Please select an action");
            for (int i = 0; i < Action.values().length; i++) {
                System.out.println(i + "\t" + Action.values()[i]);
            }
            int selected = Integer.parseInt(scanner.nextLine());
            if (Action.values().length <= selected || selected < 0) {
                System.out.println("You entered incorrect value");
                continue;
            }
            return Action.values()[selected];
        }
    }

    private static void printCountOfGamesPlayedByUser(Connection connection) throws SQLException {
        System.out.println("Printing count of games played by user");
        try (Statement statement = connection.createStatement()) {
            try (ResultSet resultSet = statement.executeQuery(PRINT_COUNT_OF_GAMES_PLAYED_BY_USER)) {
                resultSet.next(); // switching to the first row
                System.out.println(resultSet.getInt(1));
            }
        }
    }


    private static void printCountOfUsers(Connection connection) throws SQLException {
        System.out.println("Printing count of users");
        try (Statement statement = connection.createStatement()) {
            try (ResultSet resultSet = statement.executeQuery(PRINT_COUNT_OF_USERS)) {
                resultSet.next();
                System.out.println(resultSet.getInt(1));
            }
        }
    }

    private static void printCountOfWins(Connection connection) throws SQLException {
        System.out.println("Printing count of wins per user");
        try (Statement statement = connection.createStatement()) {
            try (ResultSet resultSet = statement.executeQuery(PRINT_COUNT_OF_WINS)) {
                resultSet.next();
                System.out.println(resultSet.getInt(2));
            }
        }
    }

    private static void printCountOfGuesses(Connection connection) throws SQLException {
        System.out.println("Printing count of wins per user");
        try (Statement statement = connection.createStatement()) {
            try (ResultSet resultSet = statement.executeQuery(PRINT_COUNT_OF_GUESSES)) {
                resultSet.next();
                System.out.println(resultSet.getInt(2));
            }
        }
    }
}


/*
public class Main {
    public static void main(String[] args) {
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

 */
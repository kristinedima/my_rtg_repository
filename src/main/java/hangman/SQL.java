package hangman;

public class SQL {

    public static final String CREATE_TABLE_DICTIONARY =
            "CREATE TABLE IF NOT EXISTS Dictionary (" +
                    " id BIGINT auto_increment PRIMARY KEY," +
                    " word VARCHAR(50) NOT NULL" +
                    ");";

    public static final String CREATE_TABLE_USERS =
            "CREATE TABLE IF NOT EXISTS Users (" +
                    " username VARCHAR (50) PRIMARY KEY," +
                    " name VARCHAR(50) NOT NULL," +
                    " age INT NOT NULL" +
                    ");";

    public static final String CREATE_TABLE_GAME =
            "CREATE TABLE IF NOT EXISTS Game (" +
                    " game_number BIGINT auto_increment PRIMARY KEY," +
                    " username VARCHAR(50) NOT NULL," +
                    " guesses INT NOT NULL," +
                    " outcome VARCHAR(50) NOT NULL," +
                    " word_id BIGINT," +
                    " CONSTRAINT id_fk FOREIGN KEY (word_id) REFERENCES Dictionary(id)," +
                    " CONSTRAINT username_fk FOREIGN KEY (username) REFERENCES Users(username)" +
                    ");";

    public static final String PRINT_COUNT_OF_GAMES_PLAYED_BY_USER = "SELECT COUNT(*) FROM Game WHERE username = ?;";
    public static final String PRINT_COUNT_OF_USERS = "SELECT COUNT(*) FROM Users;";
    public static final String PRINT_COUNT_OF_WINS = "SELECT username, COUNT(*) FROM Game WHERE outcome = 'Win' GROUP By username;";
    public static final String PRINT_COUNT_OF_GUESSES = "SELECT username, SUM(guesses) FROM Game GROUP By username;";
    public static final String INSERT_INTO_DICTIONARY = "INSERT INTO Dictionary" +
            "(word) VALUES" +
            " (apple, banana, computer, certification, cupcake, darkness, device, difficulty, flowers," +
            "honey, javascript, medicine, millennium, painkiller, rainfall, trouble, testosterone," +
            "truthful, water, whale);";
}
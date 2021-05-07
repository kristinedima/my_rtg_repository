CREATE TABLE IF NOT EXISTS Dictionary (
id INT NOT NULL,
word VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
id INTEGER,
name VARCHAR(200) NOT NULL,
age INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Game (
games_played INT NULL,
guesses INT NULL,
outcome VARCHAR(200) NULL
);

INSERT INTO Dictionary
(id, word) VALUES
(1, "apple"),
(2, "banana"),
(3, "computer"),
(4, "certification"),
(5, "cupcake"),
(6, "darkness"),
(7, "device"),
(8, "difficulty"),
(9, "flowers"),
(10, "honey"),
(11, "javascript"),
(12, "medicine"),
(13, "millenium"),
(14, "painkiller"),
(15, "rainfall"),
(16, "trouble"),
(17, "testosterone"),
(18, "truthful"),
(19, "water"),
(20, "whale");

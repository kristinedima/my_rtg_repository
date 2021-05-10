CREATE TABLE IF NOT EXISTS Dictionary (
id BIGINT auto_increment PRIMARY KEY,
word VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
username VARCHAR (50) auto_increment PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Game (
game_number BIGINT auto_increment PRIMARY KEY,
username VARCHAR(50) NOT NULL,
guesses INT NULL,
outcome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Outcome (
id BIGINT auto_increment PRIMARY KEY,
word VARCHAR(50) NOT NULL
);

INSERT INTO Dictionary
(id, word) VALUES
(1, "apple"), -- should not put IDs? because of auto_increment
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
(13, "millennium"),
(14, "painkiller"),
(15, "rainfall"),
(16, "trouble"),
(17, "testosterone"),
(18, "truthful"),
(19, "water"),
(20, "whale");

INSERT INTO outcome VALUES
("Win"),
("Loss");


-- print count of games played by user
SELECT COUNT(*) FROM Game;

-- print count of users
SELECT COUNT(*) FROM Users;

--list user with most wins
SELECT username
FROM Game
WHERE outcome = 1 and guesses <= ?
ORDER By ; -- here I want to order by least guesses...is that need??



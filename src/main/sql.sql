CREATE TABLE IF NOT EXISTS Dictionary (
id BIGINT auto_increment PRIMARY KEY,
word VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
-- have you tried creating a table like this? I don't think that auto_increment will work on text type column.
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

-- Why do you want this table? You already have field outcome in table Game. It already can store win/loss.
-- Besides I don't understand how will you relate this table. I suggest you to use foregin keys in your tables.
-- For example you have table dictionary with words in it. Then you should reference its id in a Game table as Foreign Key, so that you know what word played in a specific game.
-- Additionally you have Users table - and I would suggest putting Foreigh Key constraint on a Game tabl (e.g. there could not be a game without a valid user, right?
CREATE TABLE IF NOT EXISTS Outcome (
id BIGINT auto_increment PRIMARY KEY,
word VARCHAR(50) NOT NULL
);

INSERT INTO Dictionary
(id, word) VALUES
(1, "apple"), -- should not put IDs? because of auto_increment
-- Exactly. You can user INSERT INTO Dictionary (word) VALUES ("apple"), ...; No need to insert id manually.
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

-- Again, I don't think it is really needed.
INSERT INTO outcome VALUES
("Win"),
("Loss");


-- print count of games played by user
SELECT COUNT(*) FROM Game;    -- you will need to add WHERE clause, otherwise you would find all game by all players.

-- print count of users
SELECT COUNT(*) FROM Users;

--list user with most wins
-- Here it is a bit more complex. You first need to count games per user - you will need GROUP BY for that.
-- And then you need to find the one that has most wins. 
-- You have 2 options: 
--  1. Create a query in query e.g. SELECT username FROM (SELECT .. FROM Game GROUP BY ...) WHERE
--  2. You can only execut GROUP BY select in here, and then in java code get the player with most wins (e.g. the inner query only).
SELECT username
FROM Game
WHERE outcome = 1 and guesses <= ?
ORDER By ; -- here I want to order by least guesses...is that need??



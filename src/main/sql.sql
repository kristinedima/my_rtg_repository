CREATE TABLE IF NOT EXISTS Dictionary (
id BIGINT auto_increment PRIMARY KEY,
word VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
username VARCHAR (50) PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Game (
game_number BIGINT auto_increment PRIMARY KEY,
username VARCHAR(50) NOT NULL,
guesses INT NOT NULL,
outcome VARCHAR(50) NOT NULL,
CONSTRAINT id_fk FOREIGN KEY (id) REFERENCES Dictionary(id),
CONSTRAINT username_fk FOREIGN KEY (username) REFERENCES Users(username)
);

-- Additionally you have Users table - and I would suggest putting Foreigh Key constraint on a Game tabl (e.g. there could not be a game without a valid user, right?
-- KristineD: I put contraint on username from Users table, does it mean that username in Game table itself is not needed? Will there be 2 usernames in the end if I have it separately + also FK

INSERT INTO Dictionary
(word) VALUES
("apple"),
("banana"),
("computer"),
("certification"),
("cupcake"),
("darkness"),
("device"),
("difficulty"),
("flowers"),
("honey"),
("javascript"),
("medicine"),
("millennium"),
("painkiller"),
("rainfall"),
("trouble"),
("testosterone"),
("truthful"),
("water"),
("whale");

-- print count of games played by user
SELECT COUNT(*) FROM Game -- you will need to add WHERE clause, otherwise you would find all game by all players.
-- KristineD: initially that was the idea, but I guess that would give too much useless info with all the fields from Game table.
--(cont.): But does it make sense to print this outcome at all? Maybe it is enough with the last one (list user with most wins), which will implement that?
--(cont.2): if I leave this query is it not better then to use GROUP By username, or you meant WHERE username = ?

-- print count of users
SELECT COUNT(*) FROM Users;

--list user with most wins
-- Here it is a bit more complex. You first need to count games per user - you will need GROUP BY for that.
--KristineD: is it not already printed in (print count of games played by user)? Do I understand correctly that even if it is, I need to implement it also in this query?

-- And then you need to find the one that has most wins.
--KristineD: therefore I had this (is deleted now):
--INSERT INTO outcome VALUES
--("Win"),
--("Loss");
--it was in order to assign no. 1 and no. 2, so I can select later WHERE outcome = 1 (= Win).... Is my thinking not correct?
--KristineD: In my understanding the "ultimate" winner should be chosen combining 2 parameters (most wins, least guesses)

-- You have 2 options: 
--  1. Create a query in query e.g. SELECT username FROM (SELECT .. FROM Game GROUP BY ...) WHERE
--  2. You can only execut GROUP BY select in here, and then in java code get the player with most wins (e.g. the inner query only).
SELECT username
FROM Game
GROUP By username
WHERE outcome = 1 and guesses <= ?
ORDER By ; -- here I want to order by least guesses...is that needed??



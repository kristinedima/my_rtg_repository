CREATE TABLE IF NOT EXISTS Dictionary (
id INT NOT NULL,    -- For unique identifiers i suggest using automatically generated ID's. http://www.h2database.com/html/datatypes.html#identity_type
  -- additionally you should make sure that ID are unique, otherwise it will not uniquly identify a row. So you should either use PRIMARY KEY, or UNIQUE. PK is preferred
word VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
id INTEGER,   -- Same here, i guess. Though I told about 3 fields for a user: username, name and age. And you can use username as a PRIMARY KEY and then you don't need additional ID column
name VARCHAR(200) NOT NULL,
age INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Game (
games_played INT NULL,  -- Will you accumulate here number of games played? Meaning 1 user will have 1 row in this table? This is not very flexible :)
  -- I suggest to have one row per game. Then you don't have to store number of games played, you can always COUNT the rows for a user.
  -- Additionally you don't have any reference for a user here, so how do you suppose to know who of all users played specific game?
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

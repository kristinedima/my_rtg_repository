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
word_id BIGINT,
CONSTRAINT id_fk FOREIGN KEY (word_id) REFERENCES Dictionary(id),
CONSTRAINT username_fk FOREIGN KEY (username) REFERENCES Users(username)
);

INSERT INTO Dictionary
(word) VALUES
('apple'),
('banana'),
('computer'),
('certification'),
('cupcake'),
('darkness'),
('device'),
('difficulty'),
('flowers'),
('honey'),
('javascript'),
('medicine'),
('millennium'),
('painkiller'),
('rainfall'),
('trouble'),
('testosterone'),
('truthful'),
('water'),
('whale');

-- print count of games played by user
SELECT COUNT(*) FROM Game
 WHERE username = ?

-- print count of users
SELECT COUNT(*) FROM Users

--print count of wins
SELECT username, COUNT(*) FROM Game
WHERE outcome = 'Win'
GROUP By username

-- print count of guesses
SELECT username, SUM(guesses) FROM Game
GROUP By username




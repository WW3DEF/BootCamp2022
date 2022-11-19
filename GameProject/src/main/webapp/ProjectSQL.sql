CREATE DATABASE GameProjectDB;
GRANT ALL PRIVILEGES ON GameProjectDB.* TO indef@localhost IDENTIFIED BY '1111' WITH GRANT OPTION;
FLUSH PRIVILEGES;
USE GameProjectDB;

CREATE TABLE signup(
	email VARCHAR(150) PRIMARY KEY,
	uname VARCHAR(50),
 	pwd VARCHAR(50),
 	infor VARCHAR(300),
	credit INT(50)
);
CREATE TABLE game(
	gnum INTEGER(11) PRIMARY KEY,
	gname VARCHAR(100),
	gprice INTEGER(10),
	gtag VARCHAR(200),
	gpicture VARCHAR(100)
);
CREATE TABLE cart(
	cuser VARCHAR(150),
	cgame INT(10),
	cprice INT(30),
	FOREIGN KEY (cuser) REFERENCES signUp(email), 
	FOREIGN KEY (cgame) REFERENCES game(gnum) 
);
CREATE TABLE board(
	bnum INT AUTO_INCREMENT PRIMARY KEY,
	btitle VARCHAR(100),
	btag TEXT,
	bwriter VARCHAR(50),
	bdate DATE,
	FOREIGN KEY (bwriter) REFERENCES signup(email) 
);
CREATE TABLE comments(
	conum INT AUTO_INCREMENT PRIMARY KEY,
	cobcode VARCHAR(150),
	cocode INT,
	cotag VARCHAR(100),
	cdate DATE,
	FOREIGN KEY (cobcode) REFERENCES signup(email) 
);
CREATE TABLE makegame(
	mnum INT AUTO_INCREMENT PRIMARY KEY,
	mtitle VARCHAR(100),
	mtag TEXT,
	mfile VARCHAR(100),
	mwriter VARCHAR(50),
	mdate DATE
);

DROP TABLE signup;
DROP TABLE game;
DROP TABLE cart;
DROP TABLE board;
DROP TABLE comments;
DROP TABLE makegame;

INSERT INTO signup VALUES('alstjr7437@naver.com', '김민석', '0324', '01030247437', 40000);
INSERT INTO signup VALUES('dlgmlwo@naver.com', '이희재', '1111', '01077778888', 40000);
INSERT INTO signup VALUES('hong@naver.com', '홍길동', '0000', '01011112222', 0);

INSERT INTO game VALUES(1, 'Dark Souls™ lll', 49800, '액션RPG, 액션, 멀티플레이, 인기게임', 'css/image/Dark_souls_3_cover_art.jpg');
INSERT INTO game VALUES(2, 'Elden Ring', 64800, '액션RPG, 액션, 멀티플레이, 인기게임', 'css/image/eldenring.jpg');
INSERT INTO game VALUES(3, 'BattleField 1™', 11000, '1인칭 슈팅, 액션, 멀티플레이, 인기게임', 'css/image/BF1.jpg');
INSERT INTO game VALUES(4, 'EscapeFromTarkov', 55800, '1인칭 슈팅, 액션, 멀티플레이, 인기게임', 'css/image/eft.jpg');
INSERT INTO game VALUES(5, 'CS:GO', 0, '1인칭 슈팅, 액션, 멀티플레이, 무료게임','css/image/csgo.jpg');
INSERT INTO game VALUES(6, 'War Thunder', 0, '전략, 멀티플레이, 무료게임', 'css/image/warThunder.jpg');
INSERT INTO game VALUES(7, 'Warframe', 0, '액션RPG, 액션, 멀티플레이, 무료게임', 'css/image/warframe.jpg');
INSERT INTO game VALUES(8, 'Deceit', 0, '1인칭, 공포, 멀티플레이, 무료게임', 'css/image/deceit.jpg');
INSERT INTO game VALUES(9, 'H1Z1', 0, '3인칭, 액션, 멀티플레이, 무료게임', 'css/image/h1z1.jpg');
INSERT INTO game VALUES(10, 'Tom Clancys The Division', 33000, '3인칭, 액션RPG, 멀티플레이');

SELECT * FROM signup;
SELECT * FROM game;
SELECT * FROM cart;
SELECT cgame FROM cart WHERE cuser="alstjr7437@naver.com" AND cgame=2;

SELECT * FROM game WHERE gnum = ( SELECT cgame FROM cart WHERE cuser="alstjr7437@naver.com" AND cgame=2)

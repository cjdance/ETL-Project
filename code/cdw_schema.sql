CREATE TABLE "type" (
type_id INT NOT NULL PRIMARY KEY,
type_name VARCHAR);

CREATE TABLE categories (
category_id INT NOT NULL PRIMARY KEY,
category_name VARCHAR);

CREATE TABLE mechanics (
mechanic_id INT NOT NULL PRIMARY KEY,
mechanic_name VARCHAR);

CREATE TABLE board_games (
"id" INT NOT NULL PRIMARY KEY,
"name" VARCHAR,
"year" INT,
game_type INT,
	FOREIGN KEY (game_type) REFERENCES "type"(type_id),
min_players FLOAT,
max_players FLOAT,
min_players_best FLOAT,
max_players_best FLOAT,
min_age FLOAT,
min_time FLOAT,
max_time FLOAT,
category INT,
	FOREIGN KEY (category) REFERENCES categories(category_id),
mechanic INT,
	FOREIGN KEY (mechanic) REFERENCES mechanics (mechanic_id),
cooperative BOOL,
"rank" FLOAT,
num_votes FLOAT,
avg_rating FLOAT,
complexity FLOAT
);
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8pdGzZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Board_Games" (
    "id" INT   NOT NULL,
    "name" VARCHAR   NOT NULL,
    "year" INT   NOT NULL,
    "game_type" INT   NOT NULL,
    "min_players" INT   NOT NULL,
    "max_players" INT   NOT NULL,
    "min_players_rec" INT   NOT NULL,
    "max_players_rec" INT   NOT NULL,
    "min_players_best" INT   NOT NULL,
    "max_players_best" INT   NOT NULL,
    "min_age" INT   NOT NULL,
    "min_age_rec" INT   NOT NULL,
    "min_time" INT   NOT NULL,
    "max_time" INT   NOT NULL,
    "category" INT   NOT NULL,
    "mechanic" INT   NOT NULL,
    "cooperative" BOOLEAN   NOT NULL,
    "family" INT   NOT NULL,
    "rank" INT   NOT NULL,
    "num_votes" INT   NOT NULL,
    "avg_rating" FLOAT   NOT NULL,
    "complecxity" FLOAT   NOT NULL,
    CONSTRAINT "pk_Board_Games" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Categories" (
    "category_id" INT   NOT NULL,
    "mechanic_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Mechanics" (
    "mechanic_id" INT   NOT NULL,
    "mechanic_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Mechanics" PRIMARY KEY (
        "mechanic_id"
     )
);

CREATE TABLE "Family" (
    "family_id" INT   NOT NULL,
    "family_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Family" PRIMARY KEY (
        "family_id"
     )
);

CREATE TABLE "Game_Type" (
    "type_id" INT   NOT NULL,
    "type_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Game_Type" PRIMARY KEY (
        "type_id"
     )
);

ALTER TABLE "Board_Games" ADD CONSTRAINT "fk_Board_Games_game_type" FOREIGN KEY("game_type")
REFERENCES "Game_Type" ("type_id");

ALTER TABLE "Board_Games" ADD CONSTRAINT "fk_Board_Games_category" FOREIGN KEY("category")
REFERENCES "Categories" ("category_id");

ALTER TABLE "Board_Games" ADD CONSTRAINT "fk_Board_Games_mechanic" FOREIGN KEY("mechanic")
REFERENCES "Mechanics" ("mechanic_id");

ALTER TABLE "Board_Games" ADD CONSTRAINT "fk_Board_Games_family" FOREIGN KEY("family")
REFERENCES "Family" ("family_id");


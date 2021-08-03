# ETL-Project
Repository for Extract-Transform-Load project of Cody Dance-Wilson and Alan Seed.

## Introduction  
In our increasingly insular world, board games continue to be a means to spend a pleasant time interacting with a group of friends in a relaxed social setting. Not all board games are equal, and not all players enjoy the same types of games. The objective of this project is to build a database of board games that can be searched to find the games that meet a set of player requirements. Selection criteria include the type and mechanics of the game as well as the duration of the game, number of players, and suitability for a specific age group.  
## Data  
Data were downloaded from [Kaggle](https://www.kaggle.com/mshepherd/board-games) and are not included in this repository.  
The cleaned data are stored in a PostgreSQL database 
## Files  
* ```ETL-Project-CJD-AWS.pdf``` The report on this activity  
* ```.gitignore``` The gitignore file for this repository 
* ```code``` 
    * ```board_game_ERD.png``` The design of the SQL database  
    * ```cdw_code.piynb``` Test code that was later included in the main notebook  
    * ```clean_GameItem.ipynb``` Notebook to clean the data and push it into the database  
    * ```cdw_schema.sql``` The SQL script to set up the PostgreSQL database  




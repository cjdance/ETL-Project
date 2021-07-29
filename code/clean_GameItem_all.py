import pandas as pd 

files_to_process = ["bgg_GameItem.csv", "bgg_GameItem.csv", "luding_GameItem.csv", "spielen_GameItem.csv"]
data_dir = "../data/"
cols_to_keep = ["name", "year", "game_type", 
                "min_players", "min_players_rec", "min_players_best", 
                "max_players", "max_players_rec", "max_players_best",  
                "min_age","min_age_rec",
                "min_time", "max_time", 
                "category","mechanic", "cooperative",
                "rank", "num_votes", "avg_rating","complexity"]

# start the loop over the input files 
max_number_missing = 5 
for file in files_to_process: 
    data_file = data_dir + file
    game_item_df = pd.read_csv(data_file) 
    
    # keep the cols that we need
    game_item_df_clean = game_item_df[cols_to_keep].copy()

    # normalise the columns for mechanic, type and category to only have 1 x 4 digit value in each
    game_item_df_clean['category'] = game_item_df_clean['category'].str[:4]
    game_item_df_clean['game_type'] = game_item_df_clean['game_type'].str[:4]
    game_item_df_clean['mechanic'] = game_item_df_clean['mechanic'].str[:4]

    #convert the year from float to integer 
    game_item_df_clean = game_item_df_clean.loc[game_item_df_clean["year"].notnull()].astype({"year":"int32"})

    # select the rows that have less than three cols with missing data  
    missing = [] 
    for i in range(len(game_item_df_clean.index)) :
        missing.append(game_item_df_clean.iloc[i].isnull().sum())  

    game_item_df_clean["missing"] = missing
    game_item_df_clean = game_item_df_clean.loc[game_item_df_clean["missing"]<max_number_missing]
    game_item_df_clean.drop("missing", axis=1,inplace=True)
    out_file_name = data_dir + "clean_" + file
    game_item_df_clean.to_csv(out_file_name)
    
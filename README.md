Final Report

Extract--Our team primarily used Kaggle to search for datasets that would fit the project guidelines. Our focus was to find two or more sources of data that would allow us to transform the data into a more convientent and readable format--while also keeping in mind that if we needed to go into more detail with this assignment/data that our final production data base would be that stepping stone. The two sources we found were CSV files based around pizza data/restaurants in the United States. The first CSV file contained around 3500 rows of data that featured columns like restaurant name, address, city, price, and the type of pizza on the menu. The data was scraped from the web, more specifically from pizza restaurant's online menus. The second CSV file was a list of 10,000 pizza places from Datafiniti's Business Database updated between January 2018 and May 2019. The columns featured in this dataset were similar to the first--making our decision to use these two sources of data, with transformation in mind, easy.

Transform--We started by creating a schema/database table in pgAdmin4 that featured the table name and column names of our final prodcution table. We also set the primary key, as this is easier to do in pgAdmin4, and can't be achieved in pandas. Our transformation process started by extracting/reading the two CSV files using the pandas library in jupyter notebook. Our second step involved filtering the two dataframes to contain only the specific columns that were relevant for our final dataframe. We then renamed the columns so that all eight column names matched in both dataframes (this was done so that when we appended the two dataframes together, it would be a smoother process). We then dropped any duplicates in the ID column to avoid any problems when loading the dataframes into a SQL database. We dropped any null values, with the dropna function in pandas, because we had around 100 rows without any price. We then appended the two dataframes together. We decided to do this in pandas/jupyter notebook rather than doing a join in SQL because we felt it was a smoother/simpilar process. We again dropped any duplicates in the ID column because we found that there were 16 matching IDs (between the two tables) that were causing us issues initially when loading the dataframe into a SQL database.

Load--We kept eight columns for our final table. (ID, address, city latitude, longitude, price,	restaurant name, and pizza_type.) We created a connection to the engine and loaded the data into the database using the to_sql function in the sqlalchemy and psycopg2 libararies. After creating the connection with postgres we confirmed the tables were there by calling the table_names function. Finally we called the pandas function of read_sql_query to confirm the three databases were successfully loaded into SQL/pgAdmin4. We also tested this by using the query tool in pgAdmin4 with SELECT * FROM pizza. The type of final production database we used was relational. We felt that a SQL database was the best because our original data was already in a table format from the CSV files, and it would allow us to do more with the data if this assignment was going to be used further.

Drop table pizza;
DROP table pizza_one;
DROP table pizza_two;

CREATE TABLE pizza (
	id VARCHAR PRIMARY KEY,
address TEXT,
city TEXT,
latitude FLOAT,
longitude FLOAT,
price FLOAT,
restaurant TEXT,
pizza_Type TEXT
);


CREATE TABLE pizza_one (
id VARCHAR PRIMARY KEY,
address TEXT,
city TEXT,
latitude FLOAT,
longitude FLOAT,
price FLOAT,
restaurant TEXT,
pizza_Type TEXT
);

CREATE TABLE pizza_two (
id VARCHAR PRIMARY KEY,
address TEXT,
city TEXT,
latitude FLOAT,
longitude FLOAT,
price FLOAT,
restaurant TEXT,
pizza_Type TEXT
);

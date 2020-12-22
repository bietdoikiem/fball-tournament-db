USE football;

CREATE TABLE Location (
	loc_id INT,
    `name` VARCHAR(100),
    PRIMARY KEY (loc_id),
    CONSTRAINT `loc_id_chk` CHECK ((loc_id >= 0))
);

CREATE TABLE Country (
	country_id INT PRIMARY KEY,
    `name` VARCHAR(100),
    region VARCHAR(100),
    flag_url TEXT
);

CREATE TABLE City (
	city_id INT PRIMARY KEY, 
    `name` VARCHAR(100)
);

INSERT INTO City(city_id, name) VALUES (1, "London");
INSERT INTO Country(country_id, name, region, flag_url) VALUES(1, "England", "EU", "https://www.mrflag.com/wp-content/uploads/2018/11/England.png");



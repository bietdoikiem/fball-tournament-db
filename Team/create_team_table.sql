USE football;

CREATE TABLE Team (
	team_id INT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    sponsor VARCHAR(100),
    date_established DATE,
    logo_url TEXT,
    city VARCHAR(100)
)
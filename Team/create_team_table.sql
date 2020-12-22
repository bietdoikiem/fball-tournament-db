USE football;

CREATE TABLE Team (
	team_id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    sponsor VARCHAR(100),
    date_established DATE,
	#location FOREIGN KEY,
    logo_url TEXT,
    CONSTRAINT `team_name_chk` CHECK ((`name` IS NOT NULL)),
    CONSTRAINT `date_established` CHECK ((date_established >= '1800-01-01'))  # Sanity check for valid year established (as oldest club was founded on 1857 (Sheffield F.C))
);

# Add another column for team's location
-- ALTER TABLE Team
-- ADD COLUMN location INT AFTER date_established;
-- # Define foreign key for team's location
-- ALTER TABLE Team
-- ADD FOREIGN KEY (location) REFERENCES Location(loc_id);


# Populate data into Team's table
-- INSERT INTO team(name, sponsor, date_established, logo_url) 
-- VALUES('Tottenham Hotspur', NULL, '1882-09-05', 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/110px-Tottenham_Hotspur.svg.png');






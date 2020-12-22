USE football;

CREATE TABLE Stadium(
	stadium_id INT,
    team_id INT,
    `name` VARCHAR(100),
    capacity INT,
    brief_info TEXT,
    location INT,
    PRIMARY KEY (stadium_id),
    FOREIGN KEY (team_id) REFERENCES Team(team_id),
    CONSTRAINT `cap_chk` CHECK ((capacity > 0 )),
    CONSTRAINT `name_chk` CHECK ((name IS NOT NULL)),
    CONSTRAINT `stad_id_chk` CHECK ((stadium_id >= 0))
);
    
    
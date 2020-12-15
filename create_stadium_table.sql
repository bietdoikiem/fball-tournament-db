USE football;

CREATE TABLE Stadium(
	stadium_id INT,
    capacity INT,
    city INT,
    PRIMARY KEY (stadium_id),
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
)
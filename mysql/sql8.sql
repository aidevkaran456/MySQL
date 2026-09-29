CREATE DATABASE ipl_database;

USE ipl_database;

CREATE TABLE teams(
	team_id INT PRIMARY KEY,
    team_name VARCHAR(100),
    city VARCHAR (50),
    captain VARCHAR(100)
);

INSERT INTO teams VALUES
(1, 'Mumbai Indians', 'Mumbai', 'Hardik Pandya'),
(2, 'Chennai Super Kings', 'Chennai', 'Ruturaj Gaikwad'),
(3, 'Royal Challengers Bengaluru', 'Bengaluru', 'Rajat Patidar'),
(4, 'Kolkata Knight Riders', 'Kolkata', 'Ajinkya Rahane'),
(5, 'Rajasthan Royals', 'Jaipur', 'Sanju Samson'),
(6, 'Sunrisers Hyderabad', 'Hyderabad', 'Pat Cummins'),
(7, 'Delhi Capitals', 'Delhi', 'Axar Patel'),
(8, 'Punjab Kings', 'Punjab', 'Shreyas Iyer');

SELECT *FROM teams;

CREATE TABLE players(
	player_id INT PRIMARY KEY,
    player_name VARCHAR(100),
    player_role VARCHAR(50),
    age INT,
    team_id INT,
    FOREIGN KEY (team_id)
    REFERENCES teams(team_id)
);

INSERT INTO players VALUES
(101, 'Rohit Sharma', 'Batsman', 38, 1),
(102, 'Jasprit Bumrah', 'Bowler', 32, 1),
(103, 'Suryakumar Yadav', 'Batsman', 35, 1),
(104, 'MS Dhoni', 'Wicket Keeper',45, 2),
(105, 'Ravindra Jadeja', 'All Rounder', 37, 2),
(106, 'Ruturaj Gaikwad', 'Batsman', 29, 2),
(107, 'Virat Kohli', 'Batsman', 37, 3),
(108, 'Rajat Patidar', 'Batsman', 33, 3),
(109, 'Josh Hazlewood', 'Bowler', 35, 3),
(110, 'Andre Russel', 'All Rounder', 38, 4),
(111, 'Sunil Narine', 'All Rounder', 38, 4),
(112, 'Ajinkya Rahane', 'Batsman', 38, 4),
(113, 'Sanju Samson', 'Wicket Keeper', 31, 5),
(114, 'Yuzvendra Chahal', 'Bowler', 36, 5),
(115, 'Shimron Hetmyer', 'Batsman', 29, 5),
(116, 'Pat Cummins', 'Bowler', 33, 6),
(117, 'Abhishek Sharma', 'All Rounder', 25, 6),
(118, 'Travis Head', 'Batsman', 32, 6),
(119, 'KL Rahul', 'Wicket Keeper', 34, 7),
(120, 'Axar Patel', 'All Rounder', 32, 7),
(121, 'Kuldeep Yadav', 'Bowler', 31, 7),
(122, 'Shreyas Iyer', 'Batsman', 31, 8),
(123, 'Arshdeep Singh', 'Bowler', 27, 8),
(124, 'Marcus Stoinis', 'All Rounder', 37, 8);

SELECT *FROM players;

CREATE TABLE venues(
	venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100),
    city VARCHAR(50),
    capacity INT
);

INSERT INTO venues VALUES
(1, 'Wankhede Stadium', 'Mumbai', 33000),
(2, 'MA Chidambaram Stadium', 'Chennai', 50000),
(3, 'M Chinnaswamy Stadium', 'Bengaluru', 40000),
(4, 'Eden Gardens', 'Kolkata', 68000),
(5, 'Sawai Mansingh Stadium', 'Jaipur', 30000),
(6, 'Rajiv Gandhi International Stadium', 'Hyderabad', 39000),
(7, 'Arun Jaitley Stadium', 'Delhi', 35000),
(8, 'Maharaja Yadavindra Singh International Cricket Stadium', 'Punjab', 33000);

SELECT *FROM venues;

CREATE TABLE matches(
	match_id INT PRIMARY KEY,
    match_date DATE,
    team1_id INT,
    team2_id INT,
    venue_id INT,
    winner_id INT,
    win_by_runs INT,
    win_by_wickets INT,
    
    FOREIGN KEY (team1_id)
    REFERENCES teams(team_id),
    
    FOREIGN KEY (team2_id)
    REFERENCES teams(team_id),
    
    FOREIGN KEY (venue_id)
    REFERENCES venues(venue_id),
    
    FOREIGN KEY (winner_id)
    REFERENCES teams(team_id)
);

INSERT INTO matches VALUES
(1, '2026-03-28', 1, 2, 1, 1, 15, NULL),
(2, '2026-03-29', 3, 4, 3, 3, NULL, 6),
(3, '2026-03-30', 5, 6, 5, 6, 8, NULL),
(4, '2026-03-31', 7, 8, 7, 8, NULL, 5),
(5, '2026-04-01', 2, 3, 2, 2, 20, NULL),
(6, '2026-04-02', 4, 5, 4, 4, NULL, 7),
(7, '2026-04-03', 6, 7, 6, 6, 12, NULL),
(8, '2026-04-04', 8, 1, 8, 1, NULL, 4),
(9, '2026-04-05', 3, 5, 3, 5, 10, NULL),
(10, '2026-04-06', 2, 6, 2, 2, NULL, 6);

SELECT *FROM matches;

-- basic inner join
-- display all players along with their team names
SELECT players.player_name, players.player_role, teams.team_name
FROM players
INNER JOIN teams 
ON players.team_id = teams.team_id;

-- display player name, role, team name and city
SELECT p.player_name, p.player_role, t.team_name, t.city
FROM players p
INNER JOIN teams t
ON p.team_id = t.team_id;

-- JOIN with where
-- display batsmen and their teams
SELECT p.player_name, p.player_role, t.team_name
FROM players p
JOIN teams t
ON p.team_id = t.team_id
WHERE p.player_role = 'Batsman';

-- display players from mumbai indians
SELECT p.player_name, p.player_role, t.team_name
FROM players p
JOIN teams t
ON p.team_id = t.team_id
WHERE t.team_name = 'Mumbai Indians';

-- LEFT JOIN
-- it returns all teams, even if a team has no players
-- display all teams and their players
SELECT t.team_name, p.player_name
FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id;

-- RIGHT JOIN
--
-- display all players an their corresponding teams using right join
SELECT p.player_name, t.team_name
FROM players p
RIGHT JOIN teams t
ON p.team_id = t.team_id;








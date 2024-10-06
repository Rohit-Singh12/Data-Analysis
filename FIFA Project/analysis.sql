USE analyticsvidhya;

-- Create table players
CREATE TABLE IF NOT EXISTS players (
    ID INT(10),
    Name VARCHAR(255),
    Age INT(2),
    Nationality VARCHAR(255),
    Overall INT(2),
    Potential INT(2),
    Club VARCHAR(255),
    Value INT(11),
    Wage INT(11),
    Preferred_Foot ENUM('Left', 'Right'),
    Jersy_Number INT(3),
    Joined DATETIME,
    Height VARCHAR(3),
    Weight INT(3),
    Penalties INT(3)
);

-- Display structure of players table
DESC players;

-- Enable local infile
SET GLOBAL local_infile = 1;

-- Load data (Uncomment below to load data) with proper file path
-- LOAD DATA LOCAL INFILE 'C:/Users/rohit/AnalyticsVidhya/DataAnalysiswithSQL/fifa_dataset.csv'
-- INTO TABLE players
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 LINES;

-- =============================
-- Player Statistics Queries
-- =============================

-- COUNT THE NUMBER OF PLAYERS IN FIFA WORLD CUP
SELECT 'Number of Players in FIFA' AS Description;
SELECT COUNT(*) AS CountPlayers FROM players;

-- COUNT OF NATIONS THAT HAVE PARTICIPATED
SELECT 'Count of Nations that have participated in FIFA' AS Description;
SELECT COUNT(DISTINCT Nationality) FROM players;

-- TOTAL WAGE GIVEN TO PLAYER AND THEIR AVG AND STD DEVIATION
SELECT 'Total Wage given to players and their average and standard deviation' AS Description;
SELECT 
    SUM(Wage) AS Total_Wage, 
    AVG(Wage) AS Avg_Wage, 
    STDDEV(Wage) AS Std_Dev 
FROM players;

-- FREQUENCY DISTRIBUTION OF NATIONALITY
SELECT 'Frequency distribution of Nationality' AS Description;
SELECT COUNT(Nationality) AS Num_of_Players, Nationality 
FROM players 
GROUP BY Nationality 
ORDER BY Num_of_Players DESC 
LIMIT 5;

-- PLAYER WITH MAXIMUM WAGE
SELECT 'Player with Maximum Wage' AS Description;
SELECT Name, Nationality, Wage 
FROM players 
ORDER BY Wage DESC 
LIMIT 1;

-- Alternate way to find player with max wage
SELECT 'Player with Maximum Wage (Alternate)' AS Description;
SELECT Name, Nationality, Wage 
FROM players 
WHERE Wage = (SELECT MAX(Wage) FROM players);

-- PLAYER WITH BEST RATING
SELECT 'Player with Maximum Overall Rating' AS Description;
SELECT Name, Nationality, Overall 
FROM players 
WHERE Overall = (SELECT MAX(Overall) FROM players);

-- DISTRIBUTION OF PLAYERS BASED ON PREFERRED FOOT
SELECT 'Distribution of Players Based on Preferred Foot' AS Description;
SELECT COUNT(*) AS Count, Preferred_Foot 
FROM players 
GROUP BY Preferred_Foot;

-- WHICH JERSEY NUMBER IS THE LUCKIEST
SELECT 'Which Jersey Number is the Luckiest?' AS Description;
SELECT SUM(Wage) AS Total_Wage, Jersy_Number 
FROM players 
GROUP BY Jersy_Number 
ORDER BY Total_Wage DESC 
LIMIT 1;

-- FREQUENCY DISTRIBUTION OF NATIONALITY OF PLAYERS WHOSE CLUB NAME STARTS WITH M
SELECT 'Frequency Distribution of Nationality for Clubs Starting with M' AS Description;
SELECT COUNT(Nationality) AS Num_of_Players, Nationality 
FROM players 
WHERE Club LIKE 'M%' 
GROUP BY Nationality;

-- DISTRIBUTION OF PLAYERS BASED ON JOIN DATE
SELECT 'Distribution of Players Based on Date Joined' AS Description;
SELECT COUNT(*) AS Count, DATE(Joined) AS Join_Date LIMIT 10;
FROM players 
GROUP BY Join_Date;

-- DISTRIBUTION OF PLAYERS JOINED BASED ON YEAR
SELECT 'Distribution of Players Joined Based on Year' AS Description;
SELECT COUNT(*) AS Count, YEAR(Joined) AS Join_Year 
FROM players 
GROUP BY Join_Year 
ORDER BY Join_Year;

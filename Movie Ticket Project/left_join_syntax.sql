-- FIRST CREATE TABLE BEFORE RUNNING THESE COMMANDS

-- Suppose you want to find all the theatre where no 
-- shows are running
SELECT * FROM theatre
LEFT JOIN shows
ON theatre.theatre_id = shows.theatre_id
WHERE show_id IS NULL;
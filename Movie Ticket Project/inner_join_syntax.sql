--- ONCE DATA IS IMPORTED 
--- 1. TO PERFORM INNER JOIN RUN
SELECT * FROM theatre INNER JOIN shows
ON theatre.theatre_id = shows.theatre_id;

-- LET's say we have to find average show price per ticket
-- We have to do inner join as City column and price per ticket columns are in different table
SELECT city, AVG(price_per_ticket) FROM theatre INNER JOIN shows
ON theatre.theatre_id = shows.theatre_id
group by city;

-- Let's say we want to know what is the average price per ticket for each city and
-- language
SELECT city, languages_available, avg(price_per_ticket) as avg_price FROM shows
INNER JOIN movie ON movie.movie_id=shows.movie_id
INNER JOIN theatre ON theatre.theatre_id=shows.theatre_id
group by city, languages_available
order by avg_price;
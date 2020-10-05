-- display the game developer, number of games and ratings 
-- when the developer developed more than 1 game
-- show the popularity of game developer

DROP VIEW IF EXISTS popularity;
CREATE VIEW popularity AS
    SELECT developer, sum(positive_ratings - negative_ratings) AS s, count(appid) AS count
    FROM game as g
    GROUP BY developer HAVING g.count > 1
    ORDER BY s DESC
    LIMIT 500;
ALTER VIEW popularity OWNER TO steam

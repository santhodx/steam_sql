
--This query filters out the price of top ten rated games played by gamers 18 or above.

DROP VIEW IF EXISTS ratedR;

CREATE VIEW ratedR AS
    SELECT name, positive_ratings, price
    FROM game
    WHERE required_age >= 18
    ORDER BY positive_ratings DESC
    LIMIT 10;

ALTER VIEW ratedR OWNER TO steam;

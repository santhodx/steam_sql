-- Shows the best value game which is determined by average playtime and net ratings.

DROP VIEW IF EXISTS bestValueGames;

CREATE VIEW bestValueGames AS
    SELECT g.name, g.average_playtime, g.owners, (g.positive_ratings - g.negative_ratings) AS net_ratings, g.price, g.genres, g.categories, g.steamspy_tags
    FROM game AS g
    WHERE g.price > 0 AND g.english = 1 AND g.average_playtime > 0
    LIMIT 500;

ALTER VIEW bestValueGames OWNER TO steam;

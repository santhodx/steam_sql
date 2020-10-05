-- Show the name, minimum requirement, net rating, and price
-- for the games with specified language, genre, and platform.
-- Order them by net rating and price.

DROP VIEW IF EXISTS requirement;

CREATE VIEW requirement AS
	SELECT name, r.minimum, (g.positive_ratings - g.negative_ratings) AS net_ratings, g.price
	FROM game AS g
		JOIN requirements AS r ON g.appid = r.steam_appid
	WHERE g.english = 1
		AND g.genres = 'Action'
		AND g.platforms LIKE '%windows%'
	ORDER BY g.price ASC, net_ratings DESC
	LIMIT 500;

ALTER VIEW requirement OWNER TO steam;
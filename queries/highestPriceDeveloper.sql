-- Shows the developers with the highest average game pricing given that their average price is not 0 and that they have more than 2 games.

DROP VIEW IF EXISTS highestPriceDeveloper;
CREATE VIEW highestPriceDeveloper AS
	SELECT developer, percentile_disc(0.5) WITHIN GROUP (ORDER BY g.price) as medprice, ROUND(AVG(g.price)::numeric, 2) as avgprice, max(g.price) AS maxprice
	FROM game AS g
	WHERE g.price > 0
	GROUP BY g.developer
	HAVING count(price) > 1
	ORDER BY medprice DESC, avgprice DESC
	LIMIT 500;
ALTER VIEW highestPriceDeveloper OWNER TO steam;

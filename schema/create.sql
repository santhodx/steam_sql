DROP TABLE IF EXISTS game;
CREATE TABLE game (
  "appid" int PRIMARY KEY NOT NULL,
  "name" varchar NOT NULL,
  "release_date" timestamp,
  "english" int,
  "developer" varchar NOT NULL,
  "publisher" varchar NOT NULL,
  "platforms" varchar,
--  "platforms_id" int,
  "required_age" int,
--  "categories" int,
  "categories" varchar,
  "genres" varchar,
--  "steamspy_tags_id" int,
  "steamspy_tags" varchar,
  "achievements" int,
  "positive_ratings" int,
  "negative_ratings" int,
  "average_playtime" int,
  "median_playtime" int,
  "owners" varchar,
  "price" float
);
ALTER TABLE game OWNER TO steam;
COMMENT ON TABLE game IS 'Steam game primary attributes';

DROP TABLE IF EXISTS stats;
CREATE TABLE "stats" (
  "steam_appid" int NOT NULL,
  "positive_ratings" int NOT NULL,
  "negative_ratings" int NOT NULL,
  "average_playtime" int NOT NULL,
  "median_playtime" int NOT NULL
);
ALTER TABLE stats OWNER TO steam;
COMMENT ON TABLE stats IS 'Ratings/Playtime statistics';

DROP TABLE IF EXISTS description;
CREATE TABLE "description" (
  "steam_appid" int NOT NULL,
  "detailed_description" varchar,
  "about_the_game" varchar,
  "short_description" varchar
);
ALTER TABLE description OWNER TO steam;
COMMENT ON TABLE description IS 'Developer provided descriptive information on game';

DROP TABLE IF EXISTS media;
CREATE TABLE "media" (
  "steam_appid" int NOT NULL,
  "header_image" varchar,
  "screenshots" varchar,
  "background" varchar,
  "movies" varchar
);
ALTER TABLE media OWNER TO steam;
COMMENT ON TABLE media IS 'Developer provided image link of game';

DROP TABLE IF EXISTS requirements;
CREATE TABLE "requirements" (
  "steam_appid" int NOT NULL,
  "pc_requirements" varchar,
  "mac_requirements" varchar,
  "linux_requirements" varchar,
  "minimum" varchar,
  "recommended" varchar
);
ALTER TABLE requirements OWNER TO steam;
COMMENT ON TABLE requirements IS 'OS specific PC spec requirements';

DROP TABLE IF EXISTS support;
CREATE TABLE "support" (
  "steam_appid" int NOT NULL,
  "website" varchar,
  "support_url" varchar,
  "support_email" varchar
);
ALTER TABLE support OWNER TO steam;
COMMENT ON TABLE support IS 'Support information for game';

DROP TABLE IF EXISTS platform;
CREATE TABLE "platform" (
  "platform_id" int PRIMARY KEY NOT NULL,
  "platform" varchar
);
ALTER TABLE platform OWNER TO steam;
COMMENT ON TABLE platform IS 'The games OS support';

DROP TABLE IF EXISTS category;
CREATE TABLE "category" (
  "category_id" int PRIMARY KEY NOT NULL,
  "category" varchar
);
ALTER TABLE category OWNER TO steam;
COMMENT ON TABLE category IS 'Steam provided categorization';

DROP TABLE IF EXISTS steamspytags;
CREATE TABLE "steamspytags" (
  "steamspy_tags_id" int PRIMARY KEY NOT NULL,
  "tag_id" int
);
ALTER TABLE steamspytags OWNER TO steam;
COMMENT ON TABLE steamspyTags IS 'User provided categorization id values';

DROP TABLE IF EXISTS tags;
CREATE TABLE "tags" (
  "tag_id" int PRIMARY KEY NOT NULL,
  "steamspy_tags" varchar
);
ALTER TABLE tags OWNER TO steam;
COMMENT ON TABLE tags IS 'User provided categorization';

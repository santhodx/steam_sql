#!/bin/sh

echo COPY game FROM steam
psql -h data.cs.jmu.edu -c "COPY (
    SELECT appid, name
    FROM game
  ) TO STDOUT;" steam | \
  psql -c "COPY game FROM STDIN;" steam

echo COPY description FROM steam
psql -h data.cs.jmu.edu -c "COPY (
    SELECT steam_appid, detailed_description
    FROM description
  ) TO STDOUT;" steam | \
  psql -c "COPY description FROM STDIN;" steam


echo COPY game FROM csv
psql -c "\copy game FROM data/steam.csv WITH CSV HEADER" steam

echo COPY media FROM csv
psql -c "\copy media FROM data/steam_media_data.csv WITH CSV HEADER" steam

echo COPY requirements FROM csv
psql -c "\copy requirements FROM data/steam_requirements_data.csv WITH CSV HEADER" steam

echo COPY description FROM csv
psql -c "\copy description FROM data/steam_description_data.csv WITH CSV HEADER" steam

# echo COPY steamspytags FROM csv
# psql -c "\copy steamspytags FROM data/steamspy_tag_data.csv WITH CSV HEADER" steam

echo COPY support FROM csv
psql -c "\copy support FROM data/steam_support_info.csv WITH CSV HEADER" steam

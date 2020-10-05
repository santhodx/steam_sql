# STEPS TO CREATE DATABASE

1. Download the Steam Store Games (Clean dataset) from:
https://www.kaggle.com/nikdavis/steam-store-games#steam.csv

2. Run create.sql to create tables with group ownership.

3. Run copy.sh to copy data from the dataset csv file.

4. Run alter.sql to add PRIMARY/FOREIGN key constraints.

5. Run stats.sql to count rows and analyze the tables.

docker cp ./csvs/1T2023.csv test3-db-1:/tmp/1T2023.csv
docker cp ./csvs/2T2023.csv test3-db-1:/tmp/2T2023.csv
docker cp ./csvs/3T2023.csv test3-db-1:/tmp/3T2023.csv
docker cp ./csvs/4T2023.csv test3-db-1:/tmp/4T2023.csv
docker cp ./csvs/1T2024.csv test3-db-1:/tmp/1T2024.csv
docker cp ./csvs/2T2024.csv test3-db-1:/tmp/2T2024.csv
docker cp ./csvs/3T2024.csv test3-db-1:/tmp/3T2024.csv
docker cp ./csvs/4T2024.csv test3-db-1:/tmp/4T2024.csv

docker cp ./queries/create_database.sql test3-db-1:/tmp/create_database.sql


docker exec -i test3-db-1 sh -c 'cat /tmp/create_database.sql | mysql -u root -p"mypass" --local-infile=1'

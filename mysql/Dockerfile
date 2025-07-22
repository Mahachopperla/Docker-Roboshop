FROM mysql:8.0
ENV mysql_secure_installation="RoboShop@1"
#When a container is started for the first time, a new database with the specified name will be created and initialized with the provided configuration variables. 
#Furthermore, it will execute files with extensions .sh, .sql and .sql.gz that are found in /docker-entrypoint-initdb.d. Files will be executed in alphabetical order.
COPY db/*.sql /docker-entrypoint-initdb.d/

#files will be loaded automatically into mysql if they are in path /docker-entrypoint-initdb.d
# for better understanding read notes
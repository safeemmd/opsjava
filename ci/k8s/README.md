docker build --build-arg MYSQL_DATABASE=employeedb -t mys .
docker run -e MYSQL_ROOT_PASSWORD=password -d mys 

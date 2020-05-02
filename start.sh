docker build -t fab/myapp .
docker run --rm -d -p 8082:4567 --name server fab/myapp

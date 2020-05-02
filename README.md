# Service

This is a project in sinatra

# Requeriments

* Ruby 2.6.5

# How to run with docker?

Run in your terminal

`$ docker build -t fab/myapp .`
`$ docker run --rm -d -p 8082:4567 --name server fab/myapp`

# Endpoints

You can access the services through the next endpoints

## Show list of services
```
GET http://127.0.0.1:8082/services
```

## Add a new service
```
POST http://127.0.0.1:8082/services

Params:
{
  "name": "Cellphone"
}
```

## Delete a service
```
DELETE http://127.0.0.1:8082/services

Params:
{
  "id": 1
}
```

This repository contains a template for a java spring boot backend and a React frontend.

## Contact

denjoo@oss.volkswagen.com (backend)
ipdramon@oss.volkswagen.com (frontend)

## Used Technologies

* Spring Boot
* React
* Java 14 or higher
* Maven 3
* MariaDB / MySQL

## Structure

The project is structured into five submodules:
* **application**
* **rest**
* **service**
* **persistence**
* **webclient**

## Preface

1. Search your project for TODOs (e.g. 'grep -rni "TODO" .' in this projects root folder ). There will be some locations you have to change
2. Install NodeJS (if not already done)
3. Run `npm install` in webclient/app
This will download the dependencies listed in package.json
4. Ensure, that database (mariaDB/MySQL) and user is created:
```sql
CREATE DATABASE lirejarp;
CREATE USER 'lirejarp'@'%' IDENTIFIED BY 'erik';
grant all ON lirejarp.* TO 'erik'@'localhost';
```

## Build

Build spring backend
```bash
mvn clean package
```

Build spring backend + React frontend
```bash
mvn clean package -P frontend
```

## Run

Run example application.
```bash
cd application
java -jar target/application-<version>.dev.jar 
```
Your application is reachable under http://localhost:8080/lirejarp

Test simple rest call.
```
http://localhost:8080/lirejarp/api/health
http://localhost:8080/lirejarp/api/health/log
http://localhost:8080/lirejarp/api/devices
```
```
curl -X GET -H 'Content-Type: application/json' -i http://localhost:8080/lirejarp/api/health
curl -X GET -H 'Content-Type: application/json' -i http://localhost:8080/lirejarp/api/health/log
curl -X GET -H 'Content-Type: application/json' -i http://localhost:8080/lirejarp/api/devices
```
## Development & Debugging

* you can start the application by running main class `application/Application.java` in your IDE
* to enable fast changes to frontend, you can run `npm start` in webclient/app directory


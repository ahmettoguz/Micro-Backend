<h1 id="top" align="center">🚢 Release Version 1.1.0</h1> 

<br/>

## 🔍 Table of Contents

- [Features](#features)
- [Limitations](#limitations)
- [System Startup](#system-startup)
  - [Developer Mode](#developer-mode)
  - [Production Mode](#production-mode)
- [Endpoint Documentation](#endpoint-documentation)
 
<br/>

<h2 id="features">🔥 Features</h2>

+ Swagger documentation has been integrated.
+ Environment variables have been adjusted.
+ The application has been Dockerized.

<br/>

<h2 id="limitations">🚧 Limitations</h2>

- SSL has not been set up for the backend.
- There is no database integration.
- There are no automated tests.

<br/>
  
<h2 id="system-startup">🚀 System Startup</h2> 

<h3 id="developer-mode">🧪 Developer Mode</h3>

#### Using command line

```
mvnw spring-boot:run
```

#### Using Docker

```
docker build -t micro-backend-image .

docker run -d -p 8080:80 --name micro-backend-container micro-backend-image

docker ps -a

docker rm -f micro-backend-container
```

<br/>

<h3 id="production-mode">⚡Production Mode</h3> 

1. Copy `application-dev.properties` to create `application-prod.properties`.
2. Follow the instructions in the [`Micro-Docker-Config repository`](https://github.com/ahmettoguz/Micro-Docker-Config) to configure Docker for production.

<br/>

<h2 id="endpoint-documentation">📍 Endpoint Documentation</h2>

![endpoint-doc](https://github.com/user-attachments/assets/dd8aa4ac-a7f0-41aa-987d-d62f4c6f35ef)

[🔝](#top)

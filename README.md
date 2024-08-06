## 🔍 Table of Contents

- [Release Version 1.0.0](#release/1.0.0)
  - [Features](#features)
  - [Limitations](#limitations)
    
- [System Startup](#system-startup)
  - [Developer Mode](#developer-mode)
  - [Production Mode](#production-mode)
  
- [Endpoint Documentation](#endpoint-documentation)
 
<hr/> 
<br/>

<h2 id="release/1.0.0">📦 Release Version 1.0.0</h2> 

<h3 id="features">🔥 Features</h3>

+ Environment variables have been adjusted.
+ The application has been Dockerized.

  
<h3 id="limitations">🚧 Limitations</h3>

- Swagger documentation has not been integrated.
- SSL has not been set up for the backend.
- There is no database integration.
- There are no automated tests.

<hr/>
<br/>
  
<h2 id="system-startup">🚀 System Startup</h2> 

<br/>

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
2. Remove Swagger configurations from the properties file.
3. Follow the instructions in the [Micro-Docker-Config repository](https://github.com/ahmettoguz/Micro-Docker-Config) to configure Docker for production.

<hr/>
<br/>


<h2 id="endpoint-documentation">📍 Endpoint Documentation</h2>

![endpoint-doc](https://github.com/user-attachments/assets/dd8aa4ac-a7f0-41aa-987d-d62f4c6f35ef)

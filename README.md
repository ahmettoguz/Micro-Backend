## 🔍 Table of Contents

- [System Startup](#system-startup)
  - [Developer Mode](#developer-mode)
  - [Production Mode](#production-mode)
- [Release Version 1.1.0](#release/1.1.0)
  - [Features](#features)
  - [Limitations](#limitations)
 
<hr/> 
<br/>
  
<h2 id="system-startup">🚀 System Startup</h2> 

<h3 id="developer-mode">🧪 Developer Mode</h3> 

Using command line

```
mvnw spring-boot:run
```

Using Docker

```
docker build -t micro-backend-image .

docker run -d -p 8080:80 --name micro-backend-container micro-backend-image

docker ps -a

docker rm -f micro-backend-container
```


<h3 id="production-mode">⚡Production Mode</h3> 

* Create src\main\resources\application-prod.properties file as copy of the application-dev.properties.
* Remove Swagger configs.
* Visit the [Micro-Docker-Config repository](https://github.com/ahmettoguz/Micro-Docker-Config) and run the commands in the System Startup section.

<hr/> 
<br/>

<h2 id="release/1.1.0">📦 Release Version 1.1.0</h2> 


<h3 id="features">🔥 Features</h3>

+ Swagger documentation has been integrated.
+ Environment variables have been adjusted.
+ The application has been Dockerized.

  
<h3 id="limitations">🚧 Limitations</h3>

- SSL has not been set up for the backend.
- There is no database integration.
- There are no automated tests.

<hr/>

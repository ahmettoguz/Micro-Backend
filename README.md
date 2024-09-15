<h1 id="top" align="center">🚢 Release Version 1.2.1</h1> 

<br/>

## 🔍 Table of Contents

- [Features](#features)
- [Next Release Features](#next-release-features)
- [System Startup](#system-startup)
  - [Developer Mode](#developer-mode)
  - [Production Mode](#production-mode)
- [Endpoint Documentation](#endpoint-documentation)
- [Manuel Testing](#manuel-testing)
 
<br/>

<h2 id="features">🔥 Features</h2>

+ **TLS/HTTPS:** Centeralized TLS/HTTPS support for all services with selfsigned certificate.
+ **Postman Endpoint Collection:** Postman collection added for ensure validation of all API endpoints.
+ **External Communication:** Manage communication with frontend.
+ **Swagger Documentation:** Comprehensive API documentation integrated for easier development.
+ **Environment Variables:** Configurations have been adjusted for enhanced flexibility.
+ **Dockerized Application:** The application is containerized for consistent deployment and scaling.

<br/>

<h2 id="next-release-features">🚧 Next Release Features</h2>

- Database integration.
- Automated tests.

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

docker run -d -p 8081:80 --name micro-backend-container micro-backend-image

docker ps -a

docker rm -f micro-backend-container
```

<br/>

<h3 id="production-mode">⚡Production Mode</h3> 

* Copy `application-dev.properties` to create `application-prod.properties`.
* change `app.var.appMode` to `prod`.
* change `server.port` to `80`.
* Follow the instructions in the [`Micro-Docker-Config repository`](https://github.com/ahmettoguz/Micro-Docker-Config) to configure Docker for production.

<br/>

<h2 id="endpoint-documentation">📍 Endpoint Documentation</h2>

![endpoint-doc](https://github.com/user-attachments/assets/dd8aa4ac-a7f0-41aa-987d-d62f4c6f35ef)

<br/>

<h2 id="manuel-testing">🔬 Manual Testing</h2>

To run the Postman tests, first import the Postman collection file from the path ./src/main/resources/postman-request/ into Postman by selecting the "Import" option. After importing, locate the collection in Postman, execute the individual requests for each. Review the responses to ensure that the endpoints are functioning as expected.

### [🔝](#top)

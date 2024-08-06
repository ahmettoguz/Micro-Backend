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

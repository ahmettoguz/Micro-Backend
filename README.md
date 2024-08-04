docker build -t micro-backend-image .

docker run -p 8080:80 --name micro-backend-container micro-backend-image

mvnw spring-boot:run
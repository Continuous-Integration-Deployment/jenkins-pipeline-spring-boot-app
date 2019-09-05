FROM alpine:3.7

RUN apt install gnupg2 pass

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]
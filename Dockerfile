FROM alpine:3.7

RUN apt update \
    && apt install gnupg2 pass
#RUN apt install gnupg2 pass

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]
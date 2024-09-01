FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY build/libs/simple-gradle-java-app.jar /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java", "-jar", "simple-gradle-java-app.jar"]

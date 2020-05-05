FROM openjdk:8-jdk-alpine
COPY *.jar /webapp-runner.jar
CMD ["/usr/bin/java", "-jar", "/webapp-runner.jar"]

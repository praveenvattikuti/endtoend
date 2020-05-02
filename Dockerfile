FROM openjdk:8-jdk-alpine
ADD *.jar /webapp-runner.jar
CMD ["/usr/bin/java", "-jar", "/webapp-runner.jar"]

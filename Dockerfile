FROM openjdk:8u212-jdk-slim

# Maintainer Info
LABEL maintainer="charu.singla@nagarro.com.com"

VOLUME /tmp

# The application's jar file (when packaged)
ARG JAR_FILE=target/AggregatorService-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} AggregatorService-0.0.1-SNAPSHOT.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/AggregatorService-0.0.1-SNAPSHOT.jar"]

EXPOSE 8003
FROM maven:3.8.4-openjdk-17 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
COPY lib /workspace/lib
RUN mvn -f pom.xml clean package -DskipTests --no-transfer-progress

FROM openjdk:17-alpine
COPY --from=build /workspace/target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
#Backend DOCKERFILE

FROM maven:latest AS build-stage
COPY . /build
WORKDIR /build
RUN mvn package -Dmaven.test.skip=true

FROM java:8 AS runtime
WORKDIR /opt/final-project
COPY --from=build-stage /build/target/final-project.jar app.jar
ENTRYPOINT ["/usr/bin/java", "-jar", "app.jar"]
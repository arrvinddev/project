FROM amazoncorretto:17
RUN mkdir /app
WORKDIR /app
COPY shipping.jar .
ENTRYPOINT [ "/bin/java", "-jar", "-XX:InitialRAMPercentage=80", "-XX:MaxRAMPercentage=85", "/app/shipping.jar" ]
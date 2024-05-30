FROM amazoncorretto:17
RUN mkdir /app
WORKDIR /app
COPY shipping.jar .
COPY        run.sh .
ENTRYPOINT ["bash", "run.sh"]
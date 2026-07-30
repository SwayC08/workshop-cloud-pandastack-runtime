ARG PANDASTACK_BASE_IMAGE=eclipse-temurin:21-jre
FROM ${PANDASTACK_BASE_IMAGE}
WORKDIR /app
COPY app.jar /app/app.jar
USER 10001:10001
EXPOSE 8080
ENTRYPOINT ["sh","-c","exec java -Dserver.address=0.0.0.0 -Dserver.port=${PORT:-8080} -jar /app/app.jar"]

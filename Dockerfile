ARG PANDASTACK_BASE_IMAGE=eclipse-temurin:21-jre
FROM ${PANDASTACK_BASE_IMAGE}
WORKDIR /app
COPY app.jar /app/app.jar
USER 10001:10001
EXPOSE 8080
ENTRYPOINT ["java","-Xms64m","-Xmx192m","-Dloader.main=com.swayc08.workshop.backup.TenantBackupWorkerApplication","-cp","/app/app.jar","org.springframework.boot.loader.launch.PropertiesLauncher"]

# Uygulamanın çalışması için . JDK
#FROM amazoncorretto:17

FROM openjdk:17

# projenin Jar dosyasının  konumu
ARG JAR_FILE=target/*.jar

# Projenin Jar halini Docker'ın içine şu isinle kopyala
COPY ${JAR_FILE} devops-hello-app.jar

# terminalden çalıştırmak istediğin komutları CMD kullanırız
 CMD apt-get update
 CMD apt-get upgrate -y

# İç portu sabitlemek için
EXPOSE 8080

# Uygulamanın çalışacağı komut
ENTRYPOINT ["java", "-jar", "devops-hello-app.jar"]
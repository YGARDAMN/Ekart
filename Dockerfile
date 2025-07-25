# Gunakan base image yang memiliki Java 17
FROM openjdk:17-jdk-slim

# Tentukan argumen untuk file JAR
ARG JAR_FILE=target/*.jar

# Salin file .jar dari direktori target ke dalam image
COPY ${JAR_FILE} app.jar

# Tentukan port yang akan diekspos oleh aplikasi
EXPOSE 8081

# Perintah untuk menjalankan aplikasi saat container dimulai
ENTRYPOINT ["java","-jar","/app.jar"]

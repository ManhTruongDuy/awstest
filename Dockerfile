# Sử dụng Java 17 làm image nền
FROM openjdk:17-jdk-slim

# Tạo thư mục app bên trong container
WORKDIR /app

# Sao chép file jar từ thư mục target (đảm bảo đã build)
COPY target/*.jar app.jar

# Mở cổng 8080
EXPOSE 8080

# Lệnh chạy ứng dụng
CMD ["java", "-jar", "app.jar"]

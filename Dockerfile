# ----------------Stage-1: Build -------------
FROM maven:3.9.9-eclipse-temurin-17 AS builder

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies first(caching layer)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy Source Code
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# --------------Stage-2: Runtime -------------
FROM tomcat:9.0-jdk17-temurin

# Remove default ROOT app from Tomcat
RUN rm -rf /usr/local/tomact/webapps/ROOT

# Copy WAR from builder stage into Tomcat
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose 
EXPOSE 8080

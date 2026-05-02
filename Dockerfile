FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# give permission to mvnw
RUN chmod +x mvnw

# build project
RUN ./mvnw clean package -DskipTests

# run jar
CMD ["java", "-jar", "target/*.jar"]
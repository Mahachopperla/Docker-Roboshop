
FROM maven AS builder
WORKDIR /opt/server
COPY *.xml ./
COPY src ./src
RUN mvn clean package


FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
USER roboshop
COPY --from=builder /opt/server/target/shipping-1.0.jar /opt/server/shipping.jar
CMD ["java", "-jar", "shipping.jar"]

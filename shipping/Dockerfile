#unlike nodejs , injava we have 2 different environements to build and run code.
# for building code we use java development kit tools whihc are maven etc.
#and for running code we use jre-> java runtime environment
#u can directly search in google as jre alpine image u will get latest version
#so in builder we use build time tool maven and while running we used jre

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

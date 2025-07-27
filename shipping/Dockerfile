#unlike nodejs , injava we have 2 different environements to build and run code.
# for building code we use java development kit tools whihc are maven etc.
#and for running code we use jre-> java runtime environment
#so in builder we use build time tool maven and while running we used jre

FROM maven AS builder
WORKDIR /opt/server
COPY *.xml ./
COPY src ./src
RUN mvn clean package


FROM eclipse-temurin:17-jre-alpine
WORKDIR /opt/server
COPY *.xml ./
COPY src ./src
COPY --from=builder ./target/shipping-1.0.jar ./shipping.jar
CMD ["java", "-jar", "shipping.jar"]

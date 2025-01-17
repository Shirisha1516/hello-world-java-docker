FROM bitnami/java
MAINTAINER Muhammad Edwin < edwin at redhat dot com >

LABEL BASE_IMAGE="bitnami/java"
LABEL JAVA_VERSION="11"

RUN microdnf install --nodocs java-11-openjdk-headless && microdnf clean all

WORKDIR /work/
COPY target/*.jar /work/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]

FROM adoptopenjdk/maven-openjdk11
COPY target/oauth2-auth-server-1.1.0.jar app.jar
EXPOSE 8073:8073
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl
ENTRYPOINT ["java","-jar","app.jar"]
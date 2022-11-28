FROM openjdk:17

EXPOSE 8080

ADD target/java-17-maven-project-1.0-SNAPSHOT.jar java-17-maven-project-1.0-SNAPSHOT.jar

ENTRYPOINT [ "java", "-jar", "java-17-maven-project-1.0-SNAPSHOT.jar" ]

## This docker file is old one
#FROM nginx

#COPY ./ /usr/share/nginx/html/
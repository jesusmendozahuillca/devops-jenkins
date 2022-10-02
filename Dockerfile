FROM openjdk:13
EXPOSE 8090
ADD target/anime-devops-integration.jar anime-devops-integration.jar
ENTRYPOINT ["java","-jar","/anime-devops-integration.jar"]

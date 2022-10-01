FROM openjdk:14
EXPOSE 80801
ADD target/anime-devops-integration.jar anime-devops-integration.jar
ENTRYPOINT ["java","-jar","/anime-devops-integration.jar"]

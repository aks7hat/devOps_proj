FROM openjdk:8
EXPOSE 7100
ADD target/devopssampleapplication.jar devopssampleapplication.jar.jar
ENTRYPOINT ["java","-jar","/devopssampleapplication.jar.jar"]

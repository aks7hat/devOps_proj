FROM openjdk:8
EXPOSE 7100
ADD target/devopssampleapplication.war devopssampleapplication.war
ENTRYPOINT ["java","-jar","/devopssampleapplication.war"]

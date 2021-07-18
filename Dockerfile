FROM openjdk:8
EXPOSE 7100
ADD C:/Users/akshataggarwal/.m2/repository/com/nagarro/devops-tools/devops/demosampleapplication/1.0.0-SNAPSHOT/demosampleapplication-1.0.0-SNAPSHOT.war demosampleapplication-1.0.0-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/demosampleapplication-1.0.0-SNAPSHOT.war"]

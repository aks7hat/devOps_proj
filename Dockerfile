FROM openjdk:8
EXPOSE 7100
ADD C:\Users\akshataggarwal\.jenkins\workspace\FirstPipeline\demosampleapplication\target\devopssampleapplication.war devopssampleapplication.war
ENTRYPOINT ["java","-jar","/devopssampleapplication.war"]

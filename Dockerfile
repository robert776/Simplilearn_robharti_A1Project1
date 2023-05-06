#use base image to run java app
FROM openjdk:8

#define workdir
WORKDIR /var/www/java

#copy all files & folders
COPY . /var/www/java

#Run for generate java compile class
RUN javac hello_lmsapp.java

#Excute java Class
CMD ["java", "hello_lmsapp"]

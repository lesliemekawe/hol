# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "lesliemekawe@yahoo.fr" 
COPY ./holiday.war /usr/local/tomcat/webapps

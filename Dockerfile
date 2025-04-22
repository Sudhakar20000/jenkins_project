FROM tomcat:9.0

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/NETFLIX-1.2.2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

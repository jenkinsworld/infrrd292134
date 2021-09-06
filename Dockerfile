FROM tomcat:8.5.47-jdk8-openjdk
WORKDIR webapps
COPY target/SpringBootMavenExample.war . #/usr/local/tomcat/webapps#
EXPOSE 8080
CMD ["catalina.sh", "run"]
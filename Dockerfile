# Use the official Tomcat base image
FROM tomcat:latest

# Copy the WAR file into the Tomcat webapps directory
COPY target/webapp.war /usr/local/tomcat/webapps/

# Expose port 8080 to the host
EXPOSE 8080

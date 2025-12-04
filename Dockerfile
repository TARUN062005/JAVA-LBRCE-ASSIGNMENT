# Use official Tomcat 9 image with Java 17
FROM tomcat:9.0-jdk17

# Remove default Tomcat ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file and rename it to ROOT.war
COPY ASSIGNMENT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

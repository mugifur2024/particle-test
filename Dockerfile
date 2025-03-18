FROM tomcat:9

# Copy all .war files from the current directory to the webapps directory of Tomcat
COPY **/*.war /usr/local/tomcat/webapps/

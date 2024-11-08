FROM tomcat:10-jdk17

COPY target/ROOT.war $CATALINA_HOME/webapps/

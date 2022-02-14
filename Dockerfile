FROM tomcat:latest

LABEL maintainer="Minal"

ADD ./ROOT/register.jsp /usr/local/tomcat9/webapps/

EXPOSE 8080

CMD ["startup.sh", "run"]

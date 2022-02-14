#FROM tomcat:latest

#LABEL maintainer="Minal"

#ADD ./ROOT/index.jsp /usr/local/tomcat9/webapps/

#EXPOSE 8080

#CMD ["startup.sh", "run"]

FROM nginx

COPY wrapper.sh /

COPY html /usr/share/nginx/html

CMD ["./wrapper.sh"]

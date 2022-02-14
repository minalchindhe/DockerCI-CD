FROM tomcat:latest

LABEL maintainer="Minal"

ADD register.jsp /usr/local/tomcat9/webapps/ROOT/

EXPOSE 8080

CMD ["startup.sh", "run"]

#FROM nginx

#COPY wrapper.sh /

#COPY index.html /usr/share/nginx/html/

#CMD ["./wrapper.sh"]

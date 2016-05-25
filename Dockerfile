# Dockerfile for Apache HTTP Server

FROM yuunagi/mesh_httpd
MAINTAINER Yuuhe Nagisa

ADD init.sh /usr/local/bin/init.sh
RUN chmod u+x /usr/local/bin/init.sh
CMD ["/usr/local/bin/init.sh"]

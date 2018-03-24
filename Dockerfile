#FROM alpine
#
#COPY gopath/bin/gcp-cd-codelab /go/bin/gcp-cd-codelab
#
##ENTRYPOINT /go/bin/gcp-cd-codelab
FROM centos:centos6
ENV container docker
RUN yum install -y epel-release && \
    yum install -y nginx && \
    yum clean all && \
RUN service start nginx
EXPOSE 80


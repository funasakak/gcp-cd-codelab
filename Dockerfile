#FROM alpine
#
#COPY gopath/bin/gcp-cd-codelab /go/bin/gcp-cd-codelab
#
#ENTRYPOINT /go/bin/gcp-cd-codelab
FROM centos:centos7.1.1503
ENV container docker
RUN yum swap -y fakesystemd systemd && \
    yum install -y epel-release && \
    yum install -y nginx && \
    yum clean all && \
    ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN systemctl enable nginx
EXPOSE 80


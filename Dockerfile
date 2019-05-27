FROM local/c7-systemd
RUN yum clean all; \
    yum repolist; \
    yum -y update; \
    yum -y install httpd httpd-tools httpd-devel; \
    systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/init"]

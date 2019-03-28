FROM local/c7-systemd
RUN yum -y install httpd httpd-tools httpd-devel; yum clean all; systemctl enable httpd.service
EXPOSE 80
CMD ["/usr/sbin/init"]
# CentOS 7 Systemd Enabled for Apache HTTP Server Container
Dockerfile for systemd base image


## Build image
```bash
docker build --rm --no-cache -t local/c7-systemd-httpd .
```

### Running image (1)
```bash
docker run -it -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged -p 8000:80 local/c7-systemd-httpd
```

### Running image (2)
```bash
docker run -it -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /tmp/$(mktemp -d):/run -p 8000:80 local/c7-systemd-httpd
```

### Testing
```bash
docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged --rm -p 8000:80 --name c7-systemd-httpd local/c7-systemd-httpd
docker exec -it c7-systemd-httpd /bin/bash

docker stop c7-systemd-httpd
```

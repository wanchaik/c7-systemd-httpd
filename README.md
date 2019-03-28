# CentOS 7 Systemd Enabled for Apache HTTP Server Container
Dockerfile for systemd base image


## Build
```bash
docker build --rm -t local/c7-systemd-httpd .
```

### Run
```bash
docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8000:80 local/c7-systemd-httpd
```

### Run (Ubuntu)
```bash
docker run -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /tmp/$(mktemp -d):/run -p 8000:80 local/c7-systemd-httpd
```

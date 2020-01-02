# CentOS 7 Apache HTTP docker container
Dockerfile for Apache HTTP docker container

## Build
```
docker build --rm --no-cache -t local/c7-systemd-httpd .
```

### Test
```
docker run --privileged -it -p 8080:80 --rm --name c7-systemd-httpd -v /sys/fs/cgroup:/sys/fs/cgroup:ro local/c7-systemd-httpd

docker exec -it c7-systemd-httpd /bin/bash
docker stop c7-systemd-httpd
```

### Launch
```bash
docker run --privileged -d -p 8080:80 -v /sys/fs/cgroup:/sys/fs/cgroup:ro local/c7-systemd-httpd
```

WIP, DO NOT USE!!!

Trying to setup TTRSS on a K3S Kubernetes Raspberry Pi 4 cluster.

K3S Storage
https://github.com/rancher/local-path-provisioner/blob/master/README.md#usage

Since kubernetes cannot build the containers to run in the pods, I had to build them manually from the official docker-compose repository.

I cloned the original docker compose scripts (https://git.tt-rss.org/fox/ttrss-docker-compose) and modified it to build the individual containers:
ajvcorreia/ttrss-app
ajvcorreia/ttrss-updater
ajvcorreia/ttrss-web_nginx

I had to modify the nginx container to replace the app server name in the nginx.conf on startup as this is only available after kubernetes starts the pod.
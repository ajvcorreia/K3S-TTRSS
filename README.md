WIP, DO NOT USE!!!

Trying to setup TTRSS on a K3S Kubernetes Raspberry Pi 4 cluster.

K3S cluster build instructions:
https://dev.to/nullxx/raspberry-pi-4b-kubernetes-cluster-3l9a
https://itnext.io/the-ultimate-guide-to-building-your-personal-k3s-cluster-bf2643f31dd3

Kubernetes dashboard
https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/creating-sample-user.md<br>
https://www.nocture.dk/2020/07/02/running-a-kubernetes-cluster-with-dashboard-on-raspberry-pi-4/

Get dashboard token
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')

K3S Storage

Local Path: https://github.com/rancher/local-path-provisioner/blob/master/README.md#usage<br>
Longhorn: https://dev.to/bbende/k3s-on-raspberry-pi-volumes-and-storage-1om5<br>
Longhorn uninstall: https://github.com/longhorn/longhorn/tree/v0.3#uninstall-longhorn<br>
NFS: https://www.phillipsj.net/posts/k3s-enable-nfs-storage/<br>
NFS2: https://opensource.com/article/20/6/kubernetes-nfs-client-provisioning

Since kubernetes cannot build the containers to run in the pods, I had to build them manually from the official docker-compose repository.

I cloned the original docker compose scripts (https://git.tt-rss.org/fox/ttrss-docker-compose) and modified it to build the individual containers:
ajvcorreia/ttrss-app
ajvcorreia/ttrss-updater
ajvcorreia/ttrss-web_nginx

I had to modify the nginx container to replace the app server name in the nginx.conf on startup as this is only available after kubernetes starts the pod.

#下载外网包
FROM busybox 
WORKDIR /downsource
ENTRYPOINT ['copy','/downsource/*','/down']
RUN wget https://dl.k8s.io/v1.12.5/kubernetes-server-linux-amd64.tar.gz

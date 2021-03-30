FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://storage.googleapis.com/kubernetes-release/release/v1.20.5/kubernetes-server-linux-amd64.tar.gz"
RUN wget ${DOWNSOURCEURL}

CMD sh

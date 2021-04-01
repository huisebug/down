FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://github.com/kubernetes-sigs/cri-tools/releases/download/v1.20.0/crictl-v1.20.0-linux-amd64.tar.gz"
RUN wget ${DOWNSOURCEURL}

CMD sh

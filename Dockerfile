FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz"
RUN wget ${DOWNSOURCEURL}

CMD sh

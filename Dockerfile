FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://gitlab.com/xhang/gitlab/-/archive/12-3-stable-zh/gitlab-12-3-stable-zh.zip"
RUN wget ${DOWNSOURCEURL}

CMD sh

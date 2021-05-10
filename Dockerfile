FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://raw.githubusercontent.com/bitnami/bitnami-docker-openldap/master/docker-compose.yml"
RUN wget ${DOWNSOURCEURL}

CMD sh

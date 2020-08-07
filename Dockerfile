FROM busybox
WORKDIR /opt
# 包下载地址
ENV DOWNSOURCEURL "https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz"
RUN wget ${DOWNSOURCEURL}
RUN echo ''' \
cp -rf /downsource/* /down/; \
if [ $? -ne 0 ]; then \
    echo 'False'; \
else  \
    echo '$DOWNSOURCEURL Done'; \
fi; \
''' > /opt/down.sh && chmod +x /opt/down.sh
CMD /opt/down.sh

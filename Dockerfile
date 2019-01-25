FROM busybox
WORKDIR /downsource
# 包下载地址
ENV DOWNSOURCEURL "https://dl.k8s.io/v1.11.7/kubernetes-server-linux-amd64.tar.gz"
RUN wget ${DOWNSOURCEURL}
RUN echo ''' \
cp -rf /downsource/* /down/; \
if [ $? -ne 0 ]; then \
    echo 'False'; \
else  \
    echo 'Done'; \
fi; \
''' > /downsource/down.sh && chmod +x /downsource/down.sh
CMD /downsource/down.sh

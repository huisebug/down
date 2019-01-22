#下载外网包
FROM busybox 
WORKDIR /downsource
RUN wget $DOWNSOURCEURL
RUN echo '''
copy /downsource/* /down/
if [ $? -ne 0 ];then
    echo 'False'
else
    echo 'Done'
fi
''' > /downsource/down.sh && chmod +x /downsource/down.sh
ENTRYPOINT [/downsource/down.sh]

ARG DOWNSOURCEURL https://dl.k8s.io/v1.12.5/kubernetes-server-linux-amd64.tar.gz

# down
下载器
运行如下命令
```shell
docker rmi huisebug/down 
docker run -d --rm --name down huisebug/down sleep 100
docker cp down:/opt .
```

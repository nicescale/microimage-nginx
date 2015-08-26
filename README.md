# 如何使用该镜像

轻量级的HTTP服务 - Nginx,用来展示网页

### 把代码文件存放到当前目录下，并创建一个Dockerfile文件
```
from csphere/ngxin
add . /app/
```
"."表示当前目录，add 操作会把当前目录的代码文件拷贝到网站根目录/app/

### 构建运行

```
docker build -t my-app .
docker run -d -p 80:80 --name my-app my-app
```
一般nginx和php结合较多

### nginx结合php-fpm
```
docker pull csphere/php-fpm
docker run -d -p 80:80 --name my-php-fpm csphere/php-fpm
docker run -d --name my-app --net=container:my-php-fpm csphere/nginx
```
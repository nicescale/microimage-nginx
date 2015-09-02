# 如何使用该镜像

轻量级的HTTP服务 - Nginx,用来展示网页

### 把代码文件存放到当前目录下，并创建一个Dockerfile文件

```Dockerfile
from microimages/ngxin
add . /app/
```

"."表示当前目录，add 操作会把当前目录的代码文件拷贝到网站根目录/app/

### 构建运行

```console
$ docker build -t my-app .
$ docker run -d -p 80:80 --name my-app my-app
```
一般nginx和php结合较多

### nginx结合php-fpm
```console
$ docker pull microimages/php-fpm
$ docker run -d -p 80:80 --name my-php-fpm microimages/php-fpm
$ docker run -d --name my-app --net=container:my-php-fpm microimages/nginx
```

## 授权和法律

该镜像由希云制造，未经允许，任何第三方企业和个人，不得重新分发。违者必究。

## 支持和反馈

该镜像由希云为企业客户提供技术支持和保障，任何问题都可以直接反馈到: `docker@csphere.cn`


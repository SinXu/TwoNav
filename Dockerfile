# 使用官方的 Nginx 镜像作为基础
FROM nginx:1.18.0

# 删除默认的 Nginx 配置文件
RUN rm /etc/nginx/conf.d/default.conf

# 将你的项目代码复制到容器中
COPY . /usr/share/nginx/html

# 将 nginx.conf 复制到容器中的 /etc/nginx/conf.d/ 目录
COPY nginx.conf /etc/nginx/conf.d/

# 设置工作目录
WORKDIR /usr/share/nginx/html

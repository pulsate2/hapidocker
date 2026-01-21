
FROM node

# 设置环境变量
ENV HAPI_HOME=/data

# 创建工作目录 (对应环境变量中的路径)
RUN mkdir -p /data

# 设置工作目录
WORKDIR /data

# 全局安装指定的 npm 包
RUN npm install -g @twsxtd/hapi

# (可选) 如果服务需要对外暴露端口（例如 3000），请取消下一行的注释
EXPOSE 3006

# 容器启动时执行的命令
# 使用数组格式 ["executable", "param"] 是 Docker 的最佳实践
CMD ["hapi", "server"]

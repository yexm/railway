# 基于 golang 官方提供的 Alpine 镜像构建
FROM golang:alpine

# 设置工作目录
WORKDIR /app

# 将 go.mod 和 go.sum 拷贝到工作目录
COPY go.mod ./
COPY go.sum ./

# 下载依赖
RUN go mod download

# 将其他文件拷贝到工作目录
COPY . .

# 编译应用
RUN go build -o /railway

# 运行应用
CMD ["/railway"]

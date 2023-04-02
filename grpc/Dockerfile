FROM dart:2.19-sdk

ARG PROTOBUF_VERSION=22.2

WORKDIR /grpc

RUN apt-get update && \
    apt-get install -y curl unzip

RUN curl -L https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOBUF_VERSION}/protoc-${PROTOBUF_VERSION}-linux-aarch_64.zip -o protoc.zip && \
    unzip protoc.zip && \
    mv bin/* /usr/local/bin/ && \
    mv include/* /usr/local/include/

RUN dart pub global activate protoc_plugin
ENV PATH=$PATH:/root/.pub-cache/bin
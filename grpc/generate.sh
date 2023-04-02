protoc --dart_out=grpc:client/lib/src/grpc -I protos \
    protos/*/*.proto \
    google/protobuf/empty.proto \
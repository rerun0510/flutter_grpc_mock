# flutter_grpc_mock 🚀
This is a sample for building a mock server in Dart for an application using Flutter and gRPC.

## Start a mock server

Please follow the steps below in the mock directory.

1. Resolving dependencies

   ```
   dart pub get
   ```

2. Start a mock server

   ```
   dart bin/server.dart
   ```

If the following log is output to the console, the startup is successful.

```
Server listening on port 8080...
```

## Generating code from a proto file

Please follow the steps below in the grpc directory.

```
docker compose up
```

The `/gprc/generate.sh` script is executed when the docker container is started.  
Once the generation is complete, the docker container will stop.

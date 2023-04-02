import 'package:grpc/grpc.dart' as grpc;

import 'services/todo_service.dart';

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([TodoService()]);
    await server.serve(port: 8080);
    print('Server listening on port ${server.port}...');
  }
}

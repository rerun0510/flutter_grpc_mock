import 'package:flutter_grpc_common/grpc.dart';
import 'package:grpc/grpc.dart';
import 'package:uuid/uuid.dart';

class TodoService extends TodoServiceBase {
  TodoService();

  final uuid = Uuid();
  List<Todo> todos = [
    Todo(
      id: 'sample1',
      content: 'Sample Todo 1',
      status: CompletionStatus.Incomplete,
    ),
    Todo(
      id: 'sample2',
      content: 'Sample Todo 2',
      status: CompletionStatus.Incomplete,
    ),
    Todo(
      id: 'sample3',
      content: 'Sample Todo 3',
      status: CompletionStatus.Incomplete,
    ),
  ];

  @override
  Future<Empty> createTodo(ServiceCall call, CreateTodoRequest request) {
    print('TodoService.createTodo');
    print('content: ${request.content}');
    todos.add(Todo(
      id: uuid.v4(),
      content: request.content,
      status: CompletionStatus.Incomplete,
    ));
    final res = Empty();
    return Future(() => res);
  }

  @override
  Future<GetTodosResponse> getTodos(ServiceCall call, Empty request) async {
    print('TodoService.getTodos');
    print('todos:');
    for (var todo in todos) {
      print(
          ' id: ${todo.id}, content: ${todo.content}, status: ${todo.status}');
    }
    final res = GetTodosResponse(todos: todos);
    return Future(() => res);
  }

  @override
  Future<Empty> updateTodo(ServiceCall call, UpdateTodoRequest request) {
    print('TodoService.updateTodo');
    print('id: ${request.id}');
    print('status: ${request.status}');
    for (int i = 0; i < todos.length; i++) {
      if (request.id == todos[i].id) {
        todos[i].status = request.status;
      }
    }
    final res = Empty();
    return Future(() => res);
  }

  @override
  Future<Empty> deleteTodo(ServiceCall call, DeleteTodoRequest request) {
    print('TodoService.deleteTodo');
    print('id: ${request.id}');
    todos = todos.where((e) => e.id != request.id).toList();
    final res = Empty();
    return Future(() => res);
  }
}

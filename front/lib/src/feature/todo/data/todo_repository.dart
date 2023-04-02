import 'package:flutter/foundation.dart';
import 'package:flutter_grpc_common/grpc.dart';
import 'package:grpc/grpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/data/grpc_channel.dart';
import '../domain/todo_model.dart';

part 'todo_repository.g.dart';

@riverpod
FutureOr<List<TodoModel>> getTodos(GetTodosRef ref) {
  final todoRepository = ref.watch(todoRepositoryProvider);
  return todoRepository.getTodos();
}

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return TodoRepository(channel);
}

class TodoRepository {
  TodoRepository(ClientChannel channel) : _client = TodoServiceClient(channel);
  final TodoServiceClient _client;

  Future<List<TodoModel>> getTodos() async {
    try {
      final response = await _client.getTodos(Empty());
      final todos = response.todos
          .map((e) => TodoModel(
                id: e.id,
                content: e.content,
                status: e.status,
              ))
          .toList();
      return todos;
    } on GrpcError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<void> createTodo({required String content}) async {
    try {
      await _client.createTodo(
        CreateTodoRequest(content: content),
      );
    } on GrpcError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<void> updateTodo({
    required String id,
    required CompletionStatus status,
  }) async {
    try {
      await _client.updateTodo(
        UpdateTodoRequest(
          id: id,
          status: status,
        ),
      );
    } on GrpcError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  Future<void> deleteTodo({required String id}) async {
    try {
      await _client.deleteTodo(
        DeleteTodoRequest(id: id),
      );
    } on GrpcError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}

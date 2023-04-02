///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
import '../google/protobuf/empty.pb.dart' as $1;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$createTodo =
      $grpc.ClientMethod<$0.CreateTodoRequest, $1.Empty>(
          '/todo.TodoService/CreateTodo',
          ($0.CreateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getTodos = $grpc.ClientMethod<$1.Empty, $0.GetTodosResponse>(
      '/todo.TodoService/GetTodos',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTodosResponse.fromBuffer(value));
  static final _$updateTodo =
      $grpc.ClientMethod<$0.UpdateTodoRequest, $1.Empty>(
          '/todo.TodoService/UpdateTodo',
          ($0.UpdateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteTodo =
      $grpc.ClientMethod<$0.DeleteTodoRequest, $1.Empty>(
          '/todo.TodoService/DeleteTodo',
          ($0.DeleteTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> createTodo($0.CreateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTodosResponse> getTodos($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodos, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateTodo($0.UpdateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTodo, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteTodo($0.DeleteTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $1.Empty>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.GetTodosResponse>(
        'GetTodos',
        getTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.GetTodosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTodoRequest, $1.Empty>(
        'UpdateTodo',
        updateTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTodoRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTodoRequest, $1.Empty>(
        'DeleteTodo',
        deleteTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTodoRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> createTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.GetTodosResponse> getTodos_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getTodos(call, await request);
  }

  $async.Future<$1.Empty> updateTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateTodoRequest> request) async {
    return updateTodo(call, await request);
  }

  $async.Future<$1.Empty> deleteTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteTodoRequest> request) async {
    return deleteTodo(call, await request);
  }

  $async.Future<$1.Empty> createTodo(
      $grpc.ServiceCall call, $0.CreateTodoRequest request);
  $async.Future<$0.GetTodosResponse> getTodos(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> updateTodo(
      $grpc.ServiceCall call, $0.UpdateTodoRequest request);
  $async.Future<$1.Empty> deleteTodo(
      $grpc.ServiceCall call, $0.DeleteTodoRequest request);
}

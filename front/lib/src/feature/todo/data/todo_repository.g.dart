// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTodosHash() => r'8d594a850d45394b3cb022813fcbf48975bbc321';

/// See also [getTodos].
@ProviderFor(getTodos)
final getTodosProvider = AutoDisposeFutureProvider<List<TodoModel>>.internal(
  getTodos,
  name: r'getTodosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTodosRef = AutoDisposeFutureProviderRef<List<TodoModel>>;
String _$todoRepositoryHash() => r'f199125951631569a8ba0bfc0e84a77abcba169a';

/// See also [todoRepository].
@ProviderFor(todoRepository)
final todoRepositoryProvider = AutoDisposeProvider<TodoRepository>.internal(
  todoRepository,
  name: r'todoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TodoRepositoryRef = AutoDisposeProviderRef<TodoRepository>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions

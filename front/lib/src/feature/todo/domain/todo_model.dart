import 'package:flutter_grpc_common/grpc.dart';
import 'package:flutter_grpc_mock/src/feature/todo/domain/completion_status_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String id,
    required String content,
    @CompletionStatusConverter() required CompletionStatus status,
  }) = _TodoModel;

  const TodoModel._();

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);
}

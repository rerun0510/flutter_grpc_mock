import 'package:flutter_grpc_common/grpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CompletionStatusConverter
    implements JsonConverter<CompletionStatus, int> {
  const CompletionStatusConverter();

  @override
  CompletionStatus fromJson(int value) {
    return CompletionStatus.valueOf(value) ?? CompletionStatus.Unknown;
  }

  @override
  int toJson(CompletionStatus status) {
    return status.value;
  }
}

///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use completionStatusDescriptor instead')
const CompletionStatus$json = const {
  '1': 'CompletionStatus',
  '2': const [
    const {'1': 'Unknown', '2': 0},
    const {'1': 'Incomplete', '2': 1},
    const {'1': 'Complete', '2': 2},
  ],
};

/// Descriptor for `CompletionStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List completionStatusDescriptor = $convert.base64Decode('ChBDb21wbGV0aW9uU3RhdHVzEgsKB1Vua25vd24QABIOCgpJbmNvbXBsZXRlEAESDAoIQ29tcGxldGUQAg==');
@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = const {
  '1': 'CreateTodoRequest',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUb2RvUmVxdWVzdBIYCgdjb250ZW50GAEgASgJUgdjb250ZW50');
@$core.Deprecated('Use getTodosResponseDescriptor instead')
const GetTodosResponse$json = const {
  '1': 'GetTodosResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.todo.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `GetTodosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodosResponseDescriptor = $convert.base64Decode('ChBHZXRUb2Rvc1Jlc3BvbnNlEiAKBXRvZG9zGAEgAygLMgoudG9kby5Ub2RvUgV0b2Rvcw==');
@$core.Deprecated('Use updateTodoRequestDescriptor instead')
const UpdateTodoRequest$json = const {
  '1': 'UpdateTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.todo.CompletionStatus', '10': 'status'},
  ],
};

/// Descriptor for `UpdateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSLgoGc3RhdHVzGAIgASgOMhYudG9kby5Db21wbGV0aW9uU3RhdHVzUgZzdGF0dXM=');
@$core.Deprecated('Use deleteTodoRequestDescriptor instead')
const DeleteTodoRequest$json = const {
  '1': 'DeleteTodoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoRequestDescriptor = $convert.base64Decode('ChFEZWxldGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.todo.CompletionStatus', '10': 'status'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgJUgJpZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50Ei4KBnN0YXR1cxgDIAEoDjIWLnRvZG8uQ29tcGxldGlvblN0YXR1c1IGc3RhdHVz');

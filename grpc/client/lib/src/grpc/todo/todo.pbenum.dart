///
//  Generated code. Do not modify.
//  source: todo/todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CompletionStatus extends $pb.ProtobufEnum {
  static const CompletionStatus Unknown = CompletionStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unknown');
  static const CompletionStatus Incomplete = CompletionStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Incomplete');
  static const CompletionStatus Complete = CompletionStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Complete');

  static const $core.List<CompletionStatus> values = <CompletionStatus> [
    Unknown,
    Incomplete,
    Complete,
  ];

  static final $core.Map<$core.int, CompletionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CompletionStatus? valueOf($core.int value) => _byValue[value];

  const CompletionStatus._($core.int v, $core.String n) : super(v, n);
}


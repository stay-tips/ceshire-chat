// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InMessageStruct extends BaseStruct {
  InMessageStruct({
    String? type,
    String? content,
  })  : _type = type,
        _content = content;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  static InMessageStruct fromMap(Map<String, dynamic> data) => InMessageStruct(
        type: data['type'] as String?,
        content: data['content'] as String?,
      );

  static InMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? InMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'content': _content,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static InMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      InMessageStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InMessageStruct &&
        type == other.type &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([type, content]);
}

InMessageStruct createInMessageStruct({
  String? type,
  String? content,
}) =>
    InMessageStruct(
      type: type,
      content: content,
    );

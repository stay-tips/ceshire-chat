// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutMessageStruct extends BaseStruct {
  OutMessageStruct({
    String? text,
  }) : _text = text;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;
  bool hasText() => _text != null;

  static OutMessageStruct fromMap(Map<String, dynamic> data) =>
      OutMessageStruct(
        text: data['text'] as String?,
      );

  static OutMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? OutMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static OutMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutMessageStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OutMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OutMessageStruct && text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([text]);
}

OutMessageStruct createOutMessageStruct({
  String? text,
}) =>
    OutMessageStruct(
      text: text,
    );

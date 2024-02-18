// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends BaseStruct {
  MessageStruct({
    String? message,
    String? authorName,
    DateTime? when,
  })  : _message = message,
        _authorName = authorName,
        _when = when;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  set authorName(String? val) => _authorName = val;
  bool hasAuthorName() => _authorName != null;

  // "when" field.
  DateTime? _when;
  DateTime? get when => _when;
  set when(DateTime? val) => _when = val;
  bool hasWhen() => _when != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        message: data['message'] as String?,
        authorName: data['author_name'] as String?,
        when: data['when'] as DateTime?,
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'author_name': _authorName,
        'when': _when,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'author_name': serializeParam(
          _authorName,
          ParamType.String,
        ),
        'when': serializeParam(
          _when,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        authorName: deserializeParam(
          data['author_name'],
          ParamType.String,
          false,
        ),
        when: deserializeParam(
          data['when'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        message == other.message &&
        authorName == other.authorName &&
        when == other.when;
  }

  @override
  int get hashCode => const ListEquality().hash([message, authorName, when]);
}

MessageStruct createMessageStruct({
  String? message,
  String? authorName,
  DateTime? when,
}) =>
    MessageStruct(
      message: message,
      authorName: authorName,
      when: when,
    );

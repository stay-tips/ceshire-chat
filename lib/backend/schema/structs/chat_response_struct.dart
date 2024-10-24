// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatResponseStruct extends BaseStruct {
  ChatResponseStruct({
    String? content,
    String? userId,
    String? type,
  })  : _content = content,
        _userId = userId,
        _type = type;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ChatResponseStruct fromMap(Map<String, dynamic> data) =>
      ChatResponseStruct(
        content: data['content'] as String?,
        userId: data['user_id'] as String?,
        type: data['type'] as String?,
      );

  static ChatResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'user_id': _userId,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatResponseStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatResponseStruct &&
        content == other.content &&
        userId == other.userId &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([content, userId, type]);
}

ChatResponseStruct createChatResponseStruct({
  String? content,
  String? userId,
  String? type,
}) =>
    ChatResponseStruct(
      content: content,
      userId: userId,
      type: type,
    );

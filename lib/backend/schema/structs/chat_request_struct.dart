// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRequestStruct extends BaseStruct {
  ChatRequestStruct({
    String? text,
    PromptSettingsStruct? settings,
  })  : _text = text,
        _settings = settings;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "settings" field.
  PromptSettingsStruct? _settings;
  PromptSettingsStruct get settings => _settings ?? PromptSettingsStruct();
  set settings(PromptSettingsStruct? val) => _settings = val;

  void updateSettings(Function(PromptSettingsStruct) updateFn) {
    updateFn(_settings ??= PromptSettingsStruct());
  }

  bool hasSettings() => _settings != null;

  static ChatRequestStruct fromMap(Map<String, dynamic> data) =>
      ChatRequestStruct(
        text: data['text'] as String?,
        settings: PromptSettingsStruct.maybeFromMap(data['settings']),
      );

  static ChatRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'settings': _settings?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'settings': serializeParam(
          _settings,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ChatRequestStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatRequestStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        settings: deserializeStructParam(
          data['settings'],
          ParamType.DataStruct,
          false,
          structBuilder: PromptSettingsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChatRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatRequestStruct &&
        text == other.text &&
        settings == other.settings;
  }

  @override
  int get hashCode => const ListEquality().hash([text, settings]);
}

ChatRequestStruct createChatRequestStruct({
  String? text,
  PromptSettingsStruct? settings,
}) =>
    ChatRequestStruct(
      text: text,
      settings: settings ?? PromptSettingsStruct(),
    );

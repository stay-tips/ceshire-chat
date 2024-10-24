// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromptSettingsStruct extends BaseStruct {
  PromptSettingsStruct({
    String? language,
    bool? disableEpisodicMemories,
    String? promptPrefix,
  })  : _language = language,
        _disableEpisodicMemories = disableEpisodicMemories,
        _promptPrefix = promptPrefix;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "disable_episodic_memories" field.
  bool? _disableEpisodicMemories;
  bool get disableEpisodicMemories => _disableEpisodicMemories ?? false;
  set disableEpisodicMemories(bool? val) => _disableEpisodicMemories = val;

  bool hasDisableEpisodicMemories() => _disableEpisodicMemories != null;

  // "prompt_prefix" field.
  String? _promptPrefix;
  String get promptPrefix => _promptPrefix ?? '';
  set promptPrefix(String? val) => _promptPrefix = val;

  bool hasPromptPrefix() => _promptPrefix != null;

  static PromptSettingsStruct fromMap(Map<String, dynamic> data) =>
      PromptSettingsStruct(
        language: data['language'] as String?,
        disableEpisodicMemories: data['disable_episodic_memories'] as bool?,
        promptPrefix: data['prompt_prefix'] as String?,
      );

  static PromptSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? PromptSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'language': _language,
        'disable_episodic_memories': _disableEpisodicMemories,
        'prompt_prefix': _promptPrefix,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'disable_episodic_memories': serializeParam(
          _disableEpisodicMemories,
          ParamType.bool,
        ),
        'prompt_prefix': serializeParam(
          _promptPrefix,
          ParamType.String,
        ),
      }.withoutNulls;

  static PromptSettingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PromptSettingsStruct(
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        disableEpisodicMemories: deserializeParam(
          data['disable_episodic_memories'],
          ParamType.bool,
          false,
        ),
        promptPrefix: deserializeParam(
          data['prompt_prefix'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PromptSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PromptSettingsStruct &&
        language == other.language &&
        disableEpisodicMemories == other.disableEpisodicMemories &&
        promptPrefix == other.promptPrefix;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([language, disableEpisodicMemories, promptPrefix]);
}

PromptSettingsStruct createPromptSettingsStruct({
  String? language,
  bool? disableEpisodicMemories,
  String? promptPrefix,
}) =>
    PromptSettingsStruct(
      language: language,
      disableEpisodicMemories: disableEpisodicMemories,
      promptPrefix: promptPrefix,
    );

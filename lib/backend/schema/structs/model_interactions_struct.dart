// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelInteractionsStruct extends BaseStruct {
  ModelInteractionsStruct({
    String? modelType,
    String? source,
    String? prompt,
    int? inputTokens,
    double? startedAt,
    List<double>? reply,
  })  : _modelType = modelType,
        _source = source,
        _prompt = prompt,
        _inputTokens = inputTokens,
        _startedAt = startedAt,
        _reply = reply;

  // "model_type" field.
  String? _modelType;
  String get modelType => _modelType ?? '';
  set modelType(String? val) => _modelType = val;

  bool hasModelType() => _modelType != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  set prompt(String? val) => _prompt = val;

  bool hasPrompt() => _prompt != null;

  // "input_tokens" field.
  int? _inputTokens;
  int get inputTokens => _inputTokens ?? 0;
  set inputTokens(int? val) => _inputTokens = val;

  void incrementInputTokens(int amount) => inputTokens = inputTokens + amount;

  bool hasInputTokens() => _inputTokens != null;

  // "started_at" field.
  double? _startedAt;
  double get startedAt => _startedAt ?? 0.0;
  set startedAt(double? val) => _startedAt = val;

  void incrementStartedAt(double amount) => startedAt = startedAt + amount;

  bool hasStartedAt() => _startedAt != null;

  // "reply" field.
  List<double>? _reply;
  List<double> get reply => _reply ?? const [];
  set reply(List<double>? val) => _reply = val;

  void updateReply(Function(List<double>) updateFn) {
    updateFn(_reply ??= []);
  }

  bool hasReply() => _reply != null;

  static ModelInteractionsStruct fromMap(Map<String, dynamic> data) =>
      ModelInteractionsStruct(
        modelType: data['model_type'] as String?,
        source: data['source'] as String?,
        prompt: data['prompt'] as String?,
        inputTokens: castToType<int>(data['input_tokens']),
        startedAt: castToType<double>(data['started_at']),
        reply: getDataList(data['reply']),
      );

  static ModelInteractionsStruct? maybeFromMap(dynamic data) => data is Map
      ? ModelInteractionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'model_type': _modelType,
        'source': _source,
        'prompt': _prompt,
        'input_tokens': _inputTokens,
        'started_at': _startedAt,
        'reply': _reply,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'model_type': serializeParam(
          _modelType,
          ParamType.String,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
        ),
        'input_tokens': serializeParam(
          _inputTokens,
          ParamType.int,
        ),
        'started_at': serializeParam(
          _startedAt,
          ParamType.double,
        ),
        'reply': serializeParam(
          _reply,
          ParamType.double,
          isList: true,
        ),
      }.withoutNulls;

  static ModelInteractionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ModelInteractionsStruct(
        modelType: deserializeParam(
          data['model_type'],
          ParamType.String,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        prompt: deserializeParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        inputTokens: deserializeParam(
          data['input_tokens'],
          ParamType.int,
          false,
        ),
        startedAt: deserializeParam(
          data['started_at'],
          ParamType.double,
          false,
        ),
        reply: deserializeParam<double>(
          data['reply'],
          ParamType.double,
          true,
        ),
      );

  @override
  String toString() => 'ModelInteractionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ModelInteractionsStruct &&
        modelType == other.modelType &&
        source == other.source &&
        prompt == other.prompt &&
        inputTokens == other.inputTokens &&
        startedAt == other.startedAt &&
        listEquality.equals(reply, other.reply);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([modelType, source, prompt, inputTokens, startedAt, reply]);
}

ModelInteractionsStruct createModelInteractionsStruct({
  String? modelType,
  String? source,
  String? prompt,
  int? inputTokens,
  double? startedAt,
}) =>
    ModelInteractionsStruct(
      modelType: modelType,
      source: source,
      prompt: prompt,
      inputTokens: inputTokens,
      startedAt: startedAt,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataStruct extends BaseStruct {
  MetadataStruct({
    String? source,
    String? type,
    String? triggerType,
    double? when,
  })  : _source = source,
        _type = type,
        _triggerType = triggerType,
        _when = when;

  // "source" field.
  String? _source;
  String get source => _source ?? '-';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '-';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "trigger_type" field.
  String? _triggerType;
  String get triggerType => _triggerType ?? '-';
  set triggerType(String? val) => _triggerType = val;

  bool hasTriggerType() => _triggerType != null;

  // "when" field.
  double? _when;
  double get when => _when ?? 0.0;
  set when(double? val) => _when = val;

  void incrementWhen(double amount) => when = when + amount;

  bool hasWhen() => _when != null;

  static MetadataStruct fromMap(Map<String, dynamic> data) => MetadataStruct(
        source: data['source'] as String?,
        type: data['type'] as String?,
        triggerType: data['trigger_type'] as String?,
        when: castToType<double>(data['when']),
      );

  static MetadataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetadataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'source': _source,
        'type': _type,
        'trigger_type': _triggerType,
        'when': _when,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'trigger_type': serializeParam(
          _triggerType,
          ParamType.String,
        ),
        'when': serializeParam(
          _when,
          ParamType.double,
        ),
      }.withoutNulls;

  static MetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetadataStruct(
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        triggerType: deserializeParam(
          data['trigger_type'],
          ParamType.String,
          false,
        ),
        when: deserializeParam(
          data['when'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataStruct &&
        source == other.source &&
        type == other.type &&
        triggerType == other.triggerType &&
        when == other.when;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([source, type, triggerType, when]);
}

MetadataStruct createMetadataStruct({
  String? source,
  String? type,
  String? triggerType,
  double? when,
}) =>
    MetadataStruct(
      source: source,
      type: type,
      triggerType: triggerType,
      when: when,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HookStruct extends BaseStruct {
  HookStruct({
    String? name,
    int? priority,
  })  : _name = name,
        _priority = priority;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "priority" field.
  int? _priority;
  int get priority => _priority ?? 0;
  set priority(int? val) => _priority = val;

  void incrementPriority(int amount) => priority = priority + amount;

  bool hasPriority() => _priority != null;

  static HookStruct fromMap(Map<String, dynamic> data) => HookStruct(
        name: data['name'] as String?,
        priority: castToType<int>(data['priority']),
      );

  static HookStruct? maybeFromMap(dynamic data) =>
      data is Map ? HookStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'priority': _priority,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'priority': serializeParam(
          _priority,
          ParamType.int,
        ),
      }.withoutNulls;

  static HookStruct fromSerializableMap(Map<String, dynamic> data) =>
      HookStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        priority: deserializeParam(
          data['priority'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'HookStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HookStruct &&
        name == other.name &&
        priority == other.priority;
  }

  @override
  int get hashCode => const ListEquality().hash([name, priority]);
}

HookStruct createHookStruct({
  String? name,
  int? priority,
}) =>
    HookStruct(
      name: name,
      priority: priority,
    );

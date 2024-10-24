// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToolStruct extends BaseStruct {
  ToolStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ToolStruct fromMap(Map<String, dynamic> data) => ToolStruct(
        name: data['name'] as String?,
      );

  static ToolStruct? maybeFromMap(dynamic data) =>
      data is Map ? ToolStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ToolStruct fromSerializableMap(Map<String, dynamic> data) =>
      ToolStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ToolStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ToolStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

ToolStruct createToolStruct({
  String? name,
}) =>
    ToolStruct(
      name: name,
    );

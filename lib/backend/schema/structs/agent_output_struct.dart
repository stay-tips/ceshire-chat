// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentOutputStruct extends BaseStruct {
  AgentOutputStruct({
    String? output,
    List<String>? intermediateSteps,
    bool? returnDirect,
  })  : _output = output,
        _intermediateSteps = intermediateSteps,
        _returnDirect = returnDirect;

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  set output(String? val) => _output = val;

  bool hasOutput() => _output != null;

  // "intermediate_steps" field.
  List<String>? _intermediateSteps;
  List<String> get intermediateSteps => _intermediateSteps ?? const [];
  set intermediateSteps(List<String>? val) => _intermediateSteps = val;

  void updateIntermediateSteps(Function(List<String>) updateFn) {
    updateFn(_intermediateSteps ??= []);
  }

  bool hasIntermediateSteps() => _intermediateSteps != null;

  // "return_direct" field.
  bool? _returnDirect;
  bool get returnDirect => _returnDirect ?? false;
  set returnDirect(bool? val) => _returnDirect = val;

  bool hasReturnDirect() => _returnDirect != null;

  static AgentOutputStruct fromMap(Map<String, dynamic> data) =>
      AgentOutputStruct(
        output: data['output'] as String?,
        intermediateSteps: getDataList(data['intermediate_steps']),
        returnDirect: data['return_direct'] as bool?,
      );

  static AgentOutputStruct? maybeFromMap(dynamic data) => data is Map
      ? AgentOutputStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'output': _output,
        'intermediate_steps': _intermediateSteps,
        'return_direct': _returnDirect,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'output': serializeParam(
          _output,
          ParamType.String,
        ),
        'intermediate_steps': serializeParam(
          _intermediateSteps,
          ParamType.String,
          isList: true,
        ),
        'return_direct': serializeParam(
          _returnDirect,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AgentOutputStruct fromSerializableMap(Map<String, dynamic> data) =>
      AgentOutputStruct(
        output: deserializeParam(
          data['output'],
          ParamType.String,
          false,
        ),
        intermediateSteps: deserializeParam<String>(
          data['intermediate_steps'],
          ParamType.String,
          true,
        ),
        returnDirect: deserializeParam(
          data['return_direct'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AgentOutputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AgentOutputStruct &&
        output == other.output &&
        listEquality.equals(intermediateSteps, other.intermediateSteps) &&
        returnDirect == other.returnDirect;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([output, intermediateSteps, returnDirect]);
}

AgentOutputStruct createAgentOutputStruct({
  String? output,
  bool? returnDirect,
}) =>
    AgentOutputStruct(
      output: output,
      returnDirect: returnDirect,
    );

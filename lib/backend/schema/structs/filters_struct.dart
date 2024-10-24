// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiltersStruct extends BaseStruct {
  FiltersStruct({
    String? query,
  }) : _query = query;

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  set query(String? val) => _query = val;

  bool hasQuery() => _query != null;

  static FiltersStruct fromMap(Map<String, dynamic> data) => FiltersStruct(
        query: data['query'] as String?,
      );

  static FiltersStruct? maybeFromMap(dynamic data) =>
      data is Map ? FiltersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'query': _query,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'query': serializeParam(
          _query,
          ParamType.String,
        ),
      }.withoutNulls;

  static FiltersStruct fromSerializableMap(Map<String, dynamic> data) =>
      FiltersStruct(
        query: deserializeParam(
          data['query'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FiltersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FiltersStruct && query == other.query;
  }

  @override
  int get hashCode => const ListEquality().hash([query]);
}

FiltersStruct createFiltersStruct({
  String? query,
}) =>
    FiltersStruct(
      query: query,
    );

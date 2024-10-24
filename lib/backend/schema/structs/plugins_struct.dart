// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PluginsStruct extends BaseStruct {
  PluginsStruct({
    FiltersStruct? filters,
    List<PluginStruct>? installed,
    List<PluginStruct>? registry,
  })  : _filters = filters,
        _installed = installed,
        _registry = registry;

  // "filters" field.
  FiltersStruct? _filters;
  FiltersStruct get filters => _filters ?? FiltersStruct();
  set filters(FiltersStruct? val) => _filters = val;

  void updateFilters(Function(FiltersStruct) updateFn) {
    updateFn(_filters ??= FiltersStruct());
  }

  bool hasFilters() => _filters != null;

  // "installed" field.
  List<PluginStruct>? _installed;
  List<PluginStruct> get installed => _installed ?? const [];
  set installed(List<PluginStruct>? val) => _installed = val;

  void updateInstalled(Function(List<PluginStruct>) updateFn) {
    updateFn(_installed ??= []);
  }

  bool hasInstalled() => _installed != null;

  // "registry" field.
  List<PluginStruct>? _registry;
  List<PluginStruct> get registry => _registry ?? const [];
  set registry(List<PluginStruct>? val) => _registry = val;

  void updateRegistry(Function(List<PluginStruct>) updateFn) {
    updateFn(_registry ??= []);
  }

  bool hasRegistry() => _registry != null;

  static PluginsStruct fromMap(Map<String, dynamic> data) => PluginsStruct(
        filters: FiltersStruct.maybeFromMap(data['filters']),
        installed: getStructList(
          data['installed'],
          PluginStruct.fromMap,
        ),
        registry: getStructList(
          data['registry'],
          PluginStruct.fromMap,
        ),
      );

  static PluginsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PluginsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'filters': _filters?.toMap(),
        'installed': _installed?.map((e) => e.toMap()).toList(),
        'registry': _registry?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filters': serializeParam(
          _filters,
          ParamType.DataStruct,
        ),
        'installed': serializeParam(
          _installed,
          ParamType.DataStruct,
          isList: true,
        ),
        'registry': serializeParam(
          _registry,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PluginsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PluginsStruct(
        filters: deserializeStructParam(
          data['filters'],
          ParamType.DataStruct,
          false,
          structBuilder: FiltersStruct.fromSerializableMap,
        ),
        installed: deserializeStructParam<PluginStruct>(
          data['installed'],
          ParamType.DataStruct,
          true,
          structBuilder: PluginStruct.fromSerializableMap,
        ),
        registry: deserializeStructParam<PluginStruct>(
          data['registry'],
          ParamType.DataStruct,
          true,
          structBuilder: PluginStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PluginsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PluginsStruct &&
        filters == other.filters &&
        listEquality.equals(installed, other.installed) &&
        listEquality.equals(registry, other.registry);
  }

  @override
  int get hashCode => const ListEquality().hash([filters, installed, registry]);
}

PluginsStruct createPluginsStruct({
  FiltersStruct? filters,
}) =>
    PluginsStruct(
      filters: filters ?? FiltersStruct(),
    );

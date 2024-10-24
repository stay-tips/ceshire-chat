// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PluginStruct extends BaseStruct {
  PluginStruct({
    String? id,
    String? name,
    String? description,
    String? authorName,
    String? authorUrl,
    String? pluginUrl,
    String? tags,
    String? thumb,
    String? version,
    bool? active,
    String? upgrade,
    List<HookStruct>? hooks,
    List<ToolStruct>? tools,
  })  : _id = id,
        _name = name,
        _description = description,
        _authorName = authorName,
        _authorUrl = authorUrl,
        _pluginUrl = pluginUrl,
        _tags = tags,
        _thumb = thumb,
        _version = version,
        _active = active,
        _upgrade = upgrade,
        _hooks = hooks,
        _tools = tools;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  set authorName(String? val) => _authorName = val;

  bool hasAuthorName() => _authorName != null;

  // "author_url" field.
  String? _authorUrl;
  String get authorUrl => _authorUrl ?? '';
  set authorUrl(String? val) => _authorUrl = val;

  bool hasAuthorUrl() => _authorUrl != null;

  // "plugin_url" field.
  String? _pluginUrl;
  String get pluginUrl => _pluginUrl ?? '';
  set pluginUrl(String? val) => _pluginUrl = val;

  bool hasPluginUrl() => _pluginUrl != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  set tags(String? val) => _tags = val;

  bool hasTags() => _tags != null;

  // "thumb" field.
  String? _thumb;
  String get thumb => _thumb ?? '';
  set thumb(String? val) => _thumb = val;

  bool hasThumb() => _thumb != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;

  bool hasActive() => _active != null;

  // "upgrade" field.
  String? _upgrade;
  String get upgrade => _upgrade ?? '';
  set upgrade(String? val) => _upgrade = val;

  bool hasUpgrade() => _upgrade != null;

  // "hooks" field.
  List<HookStruct>? _hooks;
  List<HookStruct> get hooks => _hooks ?? const [];
  set hooks(List<HookStruct>? val) => _hooks = val;

  void updateHooks(Function(List<HookStruct>) updateFn) {
    updateFn(_hooks ??= []);
  }

  bool hasHooks() => _hooks != null;

  // "tools" field.
  List<ToolStruct>? _tools;
  List<ToolStruct> get tools => _tools ?? const [];
  set tools(List<ToolStruct>? val) => _tools = val;

  void updateTools(Function(List<ToolStruct>) updateFn) {
    updateFn(_tools ??= []);
  }

  bool hasTools() => _tools != null;

  static PluginStruct fromMap(Map<String, dynamic> data) => PluginStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        authorName: data['author_name'] as String?,
        authorUrl: data['author_url'] as String?,
        pluginUrl: data['plugin_url'] as String?,
        tags: data['tags'] as String?,
        thumb: data['thumb'] as String?,
        version: data['version'] as String?,
        active: data['active'] as bool?,
        upgrade: data['upgrade'] as String?,
        hooks: getStructList(
          data['hooks'],
          HookStruct.fromMap,
        ),
        tools: getStructList(
          data['tools'],
          ToolStruct.fromMap,
        ),
      );

  static PluginStruct? maybeFromMap(dynamic data) =>
      data is Map ? PluginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'author_name': _authorName,
        'author_url': _authorUrl,
        'plugin_url': _pluginUrl,
        'tags': _tags,
        'thumb': _thumb,
        'version': _version,
        'active': _active,
        'upgrade': _upgrade,
        'hooks': _hooks?.map((e) => e.toMap()).toList(),
        'tools': _tools?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'author_name': serializeParam(
          _authorName,
          ParamType.String,
        ),
        'author_url': serializeParam(
          _authorUrl,
          ParamType.String,
        ),
        'plugin_url': serializeParam(
          _pluginUrl,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
        ),
        'thumb': serializeParam(
          _thumb,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'upgrade': serializeParam(
          _upgrade,
          ParamType.String,
        ),
        'hooks': serializeParam(
          _hooks,
          ParamType.DataStruct,
          isList: true,
        ),
        'tools': serializeParam(
          _tools,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PluginStruct fromSerializableMap(Map<String, dynamic> data) =>
      PluginStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        authorName: deserializeParam(
          data['author_name'],
          ParamType.String,
          false,
        ),
        authorUrl: deserializeParam(
          data['author_url'],
          ParamType.String,
          false,
        ),
        pluginUrl: deserializeParam(
          data['plugin_url'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam(
          data['tags'],
          ParamType.String,
          false,
        ),
        thumb: deserializeParam(
          data['thumb'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        upgrade: deserializeParam(
          data['upgrade'],
          ParamType.String,
          false,
        ),
        hooks: deserializeStructParam<HookStruct>(
          data['hooks'],
          ParamType.DataStruct,
          true,
          structBuilder: HookStruct.fromSerializableMap,
        ),
        tools: deserializeStructParam<ToolStruct>(
          data['tools'],
          ParamType.DataStruct,
          true,
          structBuilder: ToolStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PluginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PluginStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        authorName == other.authorName &&
        authorUrl == other.authorUrl &&
        pluginUrl == other.pluginUrl &&
        tags == other.tags &&
        thumb == other.thumb &&
        version == other.version &&
        active == other.active &&
        upgrade == other.upgrade &&
        listEquality.equals(hooks, other.hooks) &&
        listEquality.equals(tools, other.tools);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        authorName,
        authorUrl,
        pluginUrl,
        tags,
        thumb,
        version,
        active,
        upgrade,
        hooks,
        tools
      ]);
}

PluginStruct createPluginStruct({
  String? id,
  String? name,
  String? description,
  String? authorName,
  String? authorUrl,
  String? pluginUrl,
  String? tags,
  String? thumb,
  String? version,
  bool? active,
  String? upgrade,
}) =>
    PluginStruct(
      id: id,
      name: name,
      description: description,
      authorName: authorName,
      authorUrl: authorUrl,
      pluginUrl: pluginUrl,
      tags: tags,
      thumb: thumb,
      version: version,
      active: active,
      upgrade: upgrade,
    );

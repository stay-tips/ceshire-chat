// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServerSettingsStruct extends BaseStruct {
  ServerSettingsStruct({
    String? username,
    String? apiKey,
    String? address,
    bool? isSecure,
  })  : _username = username,
        _apiKey = apiKey,
        _address = address,
        _isSecure = isSecure;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "api_key" field.
  String? _apiKey;
  String get apiKey => _apiKey ?? '';
  set apiKey(String? val) => _apiKey = val;

  bool hasApiKey() => _apiKey != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "is_secure" field.
  bool? _isSecure;
  bool get isSecure => _isSecure ?? false;
  set isSecure(bool? val) => _isSecure = val;

  bool hasIsSecure() => _isSecure != null;

  static ServerSettingsStruct fromMap(Map<String, dynamic> data) =>
      ServerSettingsStruct(
        username: data['username'] as String?,
        apiKey: data['api_key'] as String?,
        address: data['address'] as String?,
        isSecure: data['is_secure'] as bool?,
      );

  static ServerSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? ServerSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'api_key': _apiKey,
        'address': _address,
        'is_secure': _isSecure,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'api_key': serializeParam(
          _apiKey,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'is_secure': serializeParam(
          _isSecure,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ServerSettingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServerSettingsStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        apiKey: deserializeParam(
          data['api_key'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        isSecure: deserializeParam(
          data['is_secure'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ServerSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServerSettingsStruct &&
        username == other.username &&
        apiKey == other.apiKey &&
        address == other.address &&
        isSecure == other.isSecure;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([username, apiKey, address, isSecure]);
}

ServerSettingsStruct createServerSettingsStruct({
  String? username,
  String? apiKey,
  String? address,
  bool? isSecure,
}) =>
    ServerSettingsStruct(
      username: username,
      apiKey: apiKey,
      address: address,
      isSecure: isSecure,
    );

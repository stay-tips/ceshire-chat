import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _chunks = prefs.getStringList('ff_chunks') ?? _chunks;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_server')) {
        try {
          final serializedData = prefs.getString('ff_server') ?? '{}';
          _server = ServerSettingsStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _serverUrl = prefs.getString('ff_serverUrl') ?? _serverUrl;
    });
    _safeInit(() {
      _messages = prefs
              .getStringList('ff_messages')
              ?.map((x) {
                try {
                  return ChatResponseStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _messages;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _socket;
  dynamic get socket => _socket;
  set socket(dynamic value) {
    _socket = value;
  }

  List<String> _chunks = [];
  List<String> get chunks => _chunks;
  set chunks(List<String> value) {
    _chunks = value;
    prefs.setStringList('ff_chunks', value);
  }

  void addToChunks(String value) {
    chunks.add(value);
    prefs.setStringList('ff_chunks', _chunks);
  }

  void removeFromChunks(String value) {
    chunks.remove(value);
    prefs.setStringList('ff_chunks', _chunks);
  }

  void removeAtIndexFromChunks(int index) {
    chunks.removeAt(index);
    prefs.setStringList('ff_chunks', _chunks);
  }

  void updateChunksAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chunks[index] = updateFn(_chunks[index]);
    prefs.setStringList('ff_chunks', _chunks);
  }

  void insertAtIndexInChunks(int index, String value) {
    chunks.insert(index, value);
    prefs.setStringList('ff_chunks', _chunks);
  }

  bool _listening = false;
  bool get listening => _listening;
  set listening(bool value) {
    _listening = value;
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  ServerSettingsStruct _server = ServerSettingsStruct();
  ServerSettingsStruct get server => _server;
  set server(ServerSettingsStruct value) {
    _server = value;
    prefs.setString('ff_server', value.serialize());
  }

  void updateServerStruct(Function(ServerSettingsStruct) updateFn) {
    updateFn(_server);
    prefs.setString('ff_server', _server.serialize());
  }

  String _serverUrl = '';
  String get serverUrl => _serverUrl;
  set serverUrl(String value) {
    _serverUrl = value;
    prefs.setString('ff_serverUrl', value);
  }

  List<ChatResponseStruct> _messages = [];
  List<ChatResponseStruct> get messages => _messages;
  set messages(List<ChatResponseStruct> value) {
    _messages = value;
    prefs.setStringList(
        'ff_messages', value.map((x) => x.serialize()).toList());
  }

  void addToMessages(ChatResponseStruct value) {
    messages.add(value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void removeFromMessages(ChatResponseStruct value) {
    messages.remove(value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMessages(int index) {
    messages.removeAt(index);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void updateMessagesAtIndex(
    int index,
    ChatResponseStruct Function(ChatResponseStruct) updateFn,
  ) {
    messages[index] = updateFn(_messages[index]);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMessages(int index, ChatResponseStruct value) {
    messages.insert(index, value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

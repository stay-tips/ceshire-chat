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
      _messages = prefs
              .getStringList('ff_messages')
              ?.map((x) {
                try {
                  return MessageStruct.fromSerializableMap(jsonDecode(x));
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

  List<MessageStruct> _messages = [];
  List<MessageStruct> get messages => _messages;
  set messages(List<MessageStruct> value) {
    _messages = value;
    prefs.setStringList(
        'ff_messages', value.map((x) => x.serialize()).toList());
  }

  void addToMessages(MessageStruct value) {
    _messages.add(value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void removeFromMessages(MessageStruct value) {
    _messages.remove(value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMessages(int index) {
    _messages.removeAt(index);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void updateMessagesAtIndex(
    int index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    _messages[index] = updateFn(_messages[index]);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMessages(int index, MessageStruct value) {
    _messages.insert(index, value);
    prefs.setStringList(
        'ff_messages', _messages.map((x) => x.serialize()).toList());
  }

  bool _isResponding = false;
  bool get isResponding => _isResponding;
  set isResponding(bool value) {
    _isResponding = value;
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

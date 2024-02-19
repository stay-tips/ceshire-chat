// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import 'dart:convert';

Future sendMessage(String? content, Future Function() callback) async {
  print('sending message');
  // Add your function code here!
  MessageStruct text = MessageStruct(message: content, authorName: 'Human', when: DateTime.now());
  FFAppState().addToMessages(text);
  FFAppState().notifyListeners();
  // send message
  OutMessageStruct message = OutMessageStruct(text: content);
  FFAppState().socket.send(jsonEncode(message.toMap()));
}

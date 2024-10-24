// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:web_socket_client/web_socket_client.dart';
import 'dart:convert';

Future sendMessage(
  String text,
  Future Function(String? message) messageCallback,
  Future Function()? uiAction,
  PromptSettingsStruct settings,
) async {
  WebSocket? socket = FFAppState().socket;

  debugPrint("**** first run ******");
  final address = FFAppState().server.address;
  if (address == null) {
    messageCallback
        .call("400:bad state:  please set server address in settings");
    return;
  }
  var name = FFAppState().user?.name;
  name ??= 'user';
  var uri = 'ws://$address/ws/$name';

  if (FFAppState().server.isSecure) {
    uri = 'wss://$address/ws/$name';
  }
  //init socket
  debugPrint("initing socket on uri $uri");
  socket = WebSocket(Uri.parse(uri));

  debugPrint("socket initialized");

  // ** Monitoring connection **///
  socket.connection.listen((state) {});

  socket.messages.listen((message) {
    // Handle incoming messages.
    debugPrint("message: $message");
    if (message != null) {
      final msg = ChatResponseStruct.fromMap(json.decode(message));
      switch (msg.type) {
        case "chat_token":
          FFAppState().chunks.add(msg.content);
          break;
        case "chat":
          FFAppState().messages.add(msg);
          FFAppState().listening = false;

          uiAction?.call();

          break;
        default:
          messageCallback.call("Unknown message type: ${msg.type}");
          debugPrint("Unknown message type: ${msg.type}");
      }
    }
  });

  await socket.connection.firstWhere((state) => state is Connected);
  FFAppState().messages.add(ChatResponseStruct(
        type: "chat",
        content: text,
      ));
  ChatRequestStruct request = ChatRequestStruct(text: text, settings: settings);

  uiAction?.call();
  socket.send(json.encode(request.toSerializableMap()));
  uiAction?.call();
  FFAppState().listening = true;
}

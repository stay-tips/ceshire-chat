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

Future sendMessage(String text, Future Function() errorCallback,
    Future Function() uiAction) async {
  String? uri = FFAppState().chatServerUri;
  if (uri == null) {
    debugPrint("uri is null");
    await errorCallback.call();
    uri = FFAppState().chatServerUri;
    debugPrint("uri is $uri");
  }

  WebSocket? socket = FFAppState().socket;
  if (socket == null) {
    debugPrint("initing socket on uri $uri");
    //init socket
    socket = WebSocket(Uri.parse(uri));
    FFAppState().socket = socket;
    debugPrint("socket initialized");

    // Listen to changes in the connection state.
    socket.connection.listen((state) {
      // Handle changes in the connection state.
      debugPrint("state: $state");
    });

    socket.messages.listen((message) {
      // Handle incoming messages.
      debugPrint("message: $message");
      if (message != null) {
        final msg = MessageStruct.fromMap(json.decode(message));
        debugPrint(msg.toString());
        switch (msg.type) {
          case "chat_token":
            FFAppState().chunks.add(msg.content);
            break;
          case "chat":
            FFAppState().messages.add(msg);
            uiAction.call();

            break;
          default:
            debugPrint("Unknown message type: ${msg.type}");
        }
      }
    });
  }
  await socket.connection.firstWhere((state) => state is Connected);
  FFAppState().messages.add(MessageStruct(
        type: "chat",
        content: text,
      ));
  uiAction.call();
  socket.send('{"text": "$text"}');
}

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

Future initWebSocketConnection(
  String endpoint,
  String? userId,
  Future Function() callback,
) async {
  print('*** Connecting to socket $endpoint');
  if (userId == null) {
    userId = 'user'; //defualt ceshire cat user
  }
  final uri = endpoint + '/' + userId;
  final socket = WebSocket(Uri.parse(uri));

  socket.messages.listen((message) {
    // Handle incoming messages.
    print('*** incoming message $message');
    //final List<ChatResponseStruct> = convertJsontoChatResp(message);
    final json = jsonDecode(message);
    print("*** message decoded ${json['type']}");
    final res = MessageStruct.fromMap(json);

    print("**** cat error? ${res.error}");

    if (res.type == 'chat') {
      print("*** chat message ${res.content}");
      addMessage(res);
      // addToChatHistory(res, callbackAction);
      // } else if (res.type == 'property') {
      //   print("*** property message ${res.content}");
      //   addToPropertyHistory(res, callbackAction);
      // } else if (res.type == 'user') {
      //   print("*** user message ${res.content}");
      //   addToUserHistory(res, callbackAction);
    } else if (res.type == 'error') {
      print("*** error message ${res.content}");
    } else {
      print("*** unknown message ${res.content}");
    }

    //addToChatHistory(json, callbackAction);
    addMessage(res);
  });

  // Listen to changes in the connection state.
  socket.connection.listen((state) {
    // Handle changes in the connection state.
    print("**** connection state changed $state");
  });
}

void addMessage(MessageStruct message) {
  if (message.type == 'error') {
    print("**** cat response has error...");
  }
  String? content = message.content;

  // prepare response
  // final chat = ChatResponseStruct(catResponse: response, text: message);
  // FFAppState().addToChatHistory(chat);

  FFAppState().updateMessagesAtIndex(
    FFAppState().messages.length - 1,
    (e) {
      e..content = message; //"${e.content}";
      return e;
    },
  );
}

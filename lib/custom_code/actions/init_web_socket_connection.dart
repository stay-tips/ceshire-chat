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
}

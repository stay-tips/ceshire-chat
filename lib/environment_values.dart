import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Dev';
  static const String environmentValuesPath =
      'assets/environment_values/dev.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _catUrl = data['catUrl'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _catUrl = '';
  String get catUrl => _catUrl;
}

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
      _is_concierge_secured = data['is_concierge_secured'];
      _cat_address = data['cat_address'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  bool _is_concierge_secured = false;
  bool get is_concierge_secured => _is_concierge_secured;

  String _cat_address = '';
  String get cat_address => _cat_address;
}

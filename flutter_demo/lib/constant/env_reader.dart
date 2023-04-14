import 'dart:convert';
import 'package:flutter/services.dart';

class EnvironmentReader {
  static Map<String, dynamic> _config = {};

  static Future<void> initialize(String environment) async {
    final configString =
        await rootBundle.loadString('config/env_$environment.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static String getEnvironmentName() {
    return _config['environment'] as String;
  }
  
  static String getUrlApi() {
    return _config['url_api'] as String;
  }
}

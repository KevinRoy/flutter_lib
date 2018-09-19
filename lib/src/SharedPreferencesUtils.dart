import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  static saveInt(String key, int value) async {
    SharedPreferences sp = await _prefs;
    sp.setInt(key, value);
  }

  static saveString(String key, String value) async {
    SharedPreferences sp = await _prefs;
    sp.setString(key, value);
  }

  static saveBool(String key, bool value) async {
    SharedPreferences sp = await _prefs;
    sp.setBool(key, value);
  }

  static saveDouble(String key, double value) async {
    SharedPreferences sp = await _prefs;
    sp.setDouble(key, value);
  }

  static saveStringList(String key, List<String> value) async {
    SharedPreferences sp = await _prefs;
    sp.setStringList(key, value);
  }

  static Future<String> getString(String key) {
    return _prefs.then<String>((SharedPreferences sp) {
      return sp.getString(key) ?? "";
    });
  }

  static Future<int> getInt(String key) {
    return _prefs.then<int>((SharedPreferences sp) {
      return sp.getInt(key) ?? 0;
    });
  }

  static Future<double> getDouble(String key) {
    return _prefs.then<double>((SharedPreferences sp) {
      return sp.getDouble(key) ?? 0.0;
    });
  }

  static Future<bool> getBool(String key) {
    return _prefs.then<bool>((SharedPreferences sp) {
      return sp.getBool(key) ?? false;
    });
  }

  static Future<List<String>> getStringList(String key) {
    return _prefs.then<List<String>>((SharedPreferences sp) {
      return sp.getStringList(key) ?? new List<String>();
    });
  }

  static Future<bool> clear() async {
    SharedPreferences sp = await _prefs;
    return sp.clear();
  }
}

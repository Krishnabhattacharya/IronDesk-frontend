import 'package:shared_preferences/shared_preferences.dart';

import 'enums/user_type.dart';

class SharedPreferenceService {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String? getValue(String key) {
    return _prefs?.getString(key);
  }

  static Future<void> setValue(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  static Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  static Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  static Future<void> saveLogin(UserType type) async {
    await _prefs?.setString("user_type", type.name);
  }
}

// Alias for compatibility if needed, or I can just use one class.
// Since login_view uses SharedPrefsService and api_client uses SharedPreferenceService,
// I will just make them the same class or aliases.
// The file path requested in login_view is: package:irondesk/services/shared_preference_service/shared_preference_service.dart
// The file path requested in api_client is: package:irondesk/services/shared_preference_service.dart
// This means there is a directory structure mismatch in imports too.
// I will place the file at `lib/services/shared_preference_service.dart` and update `login_view.dart` to point to it correctly.
// Also, I will provide the class and maybe a TypeDef if really needed, but it's better to refactor the usage.
// For now, I will use the class name `SharedPreferenceService` and add a static field or just refactor `login_view.dart` to use `SharedPreferenceService`.
// Actually, looking at login_view, it imports `package:irondesk/services/shared_preference_service/shared_preference_service.dart` BUT uses `SharedPrefsService`.
// This implies the class name in that file was `SharedPrefsService`.
// I'll name the class `SharedPrefsService` and add an alias or just refactor.
// To be safe and clean, I will use `SharedPreferenceService` as the class name and refactor `SharedPrefsService` to `SharedPreferenceService` in `login_view.dart`.

typedef SharedPrefsService = SharedPreferenceService;

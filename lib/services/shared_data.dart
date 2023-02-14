import 'package:crossplat_objectid/crossplat_objectid.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataPrefrences {
  static late SharedPreferences _preferences;
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future<void> setDefaultLanguage(String code) async =>
      await _preferences.setString("language", code);

  static String getDefaultLanguage() =>
      _preferences.getString('language') ?? "English";
}

String generateId() {
  ObjectId id1 = ObjectId();
  return id1.toHexString();
}
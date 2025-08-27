import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // get data
  String? getString({required String key}) {
    return sharedPreferences.getString(key);
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  // save data
  Future<bool> save({required String key, required dynamic value}) async {
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is double) {
      return await sharedPreferences.setDouble(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences.setStringList(key, value);
    } else {
      return false;
    }
  }

  // remove data
  Future<bool> remove({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  // clear data
  Future<bool> clear() async {
    return await sharedPreferences.clear();
  }

  // checks
  Future<bool> containKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }
}

import 'package:shared_preferences/shared_preferences.dart';


class AppData {
  static late SharedPreferences prefs;

  static initialize() async {
    prefs = await SharedPreferences.getInstance();
    initializeDioClient();
  }

  static initializeDioClient() {
    // client = ApiService(
    //     dio.Dio(dio.BaseOptions(contentType: "application/json")));
  }

  static setDefaults(String key, String value) {
    var x = prefs.setString(key, value);
  }

  static String? getDefaults(String key) {
    return prefs.getString(key);
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class UserManager {
  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');

    if (token == null || token == 'null') return null;

    return token;
  }

  static void setToken(String? token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token!);
  }
}

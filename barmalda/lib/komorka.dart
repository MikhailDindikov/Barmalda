import 'package:shared_preferences/shared_preferences.dart';

class Komorka {
  static SharedPreferences? komorka;

  static Future<(String, bool)> leha() async {
    komorka = await SharedPreferences.getInstance();
    return ('', false);
  }
}

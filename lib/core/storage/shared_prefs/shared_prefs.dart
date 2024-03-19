import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  SharedPrefs._();
  static const String _isSaveBool = 'isTelegramChatSave';

  static Future<void> setTelegramChat({required bool telegram}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isSaveBool, telegram);
  }

  static Future<bool?> getTelegramChat() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isSaveBool);
  }
}

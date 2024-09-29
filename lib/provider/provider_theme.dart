import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderTheme extends ChangeNotifier {
   static const THEME_STATUS = "THEME STATUS"; // key
  bool _darkTheme = false; //هذا المتغير يمثل الوضع الحالي theme
  bool get getIsDarkTheme => _darkTheme;
 
  // to make run Dark 
  ProviderTheme() {
    getTheme();
  }

  Future<void> setDarkTheme({required bool themeValue}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, themeValue); // ثم تُخزّن قيمة theme الجديدة في التخزين المحلي باستخدام setBool
    _darkTheme = themeValue;
    notifyListeners();
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _darkTheme = prefs.getBool(THEME_STATUS) ?? false; //تحصل على القيمة المخزنة باستخدام getBool
    notifyListeners();
    return _darkTheme;
  }
}
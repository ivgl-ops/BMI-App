import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static late SharedPreferences _preferences;

  static const _keyAge = 'age';
  static const _keyWeight = 'weight';
  static const _keyHeight = 'height';
  static const _keyGender = 'gender';
  static const _keyUserBmi = '_userBmi';
  static const _keyUserDate = '_userDate';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setAge(int age) async =>
      await _preferences.setInt(_keyAge, age);

  static int? getAge() => _preferences.getInt(_keyAge);

  static Future setWeight(int weight) async =>
      await _preferences.setInt(_keyWeight, weight);

  static int? getWeight() => _preferences.getInt(_keyWeight);

  static Future setHeight(double height) async =>
      await _preferences.setDouble(_keyHeight, height);

  static double? getHeight() => _preferences.getDouble(_keyHeight);

  static Future setGender(bool gender) async =>
      await _preferences.setBool(_keyGender, gender);

  static bool? getGender() => _preferences.getBool(_keyGender);

  static Future setUserBmiList(List<String> userBmi) async =>
      await _preferences.setStringList(_keyUserBmi, userBmi);

  static List<String>? getUserBmiList() =>
      _preferences.getStringList(_keyUserBmi);

  static Future setUserDate(List<String> userDate) async =>
      await _preferences.setStringList(_keyUserDate, userDate);

  static List<String>? getUserDate() =>
      _preferences.getStringList(_keyUserDate);

  static clearDataBMi() => _preferences.remove(_keyUserBmi);
  static clearDataDate() => _preferences.remove(_keyUserDate);
}

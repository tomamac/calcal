import 'package:calcal/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedprefs {
  sharedprefs._privateConstructor();

  static final sharedprefs instance = sharedprefs._privateConstructor();

  Future<void> setString(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }

  Future<int> getInt(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  Future<double> getDouble(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0;
  }

  Future<bool> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? true;
  }

  Future<void> addprofileToSF(profileModel profile) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setDouble('weight', profile.weight);
      prefs.setInt('height', profile.height);
      prefs.setInt('age', profile.age);
      prefs.setString('sex', profile.sex == 0 ? "ชาย" : "หญิง");
      prefs.setDouble('bmi', profile.bmi);
    } catch (e) {
      print('add to SF ${e.toString()}');
    }
  }

  getProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final double weight = prefs.getDouble('weight') ?? 0;
    final int height = prefs.getInt('height') ?? 0;
    final int age = prefs.getInt('age') ?? 0;
    final String sex = prefs.getString('sex') ?? '';
    final double bmi = prefs.getDouble('bmi') ?? 0;

    return {
      'weight': weight,
      'height': height,
      'age': age,
      'sex': sex,
      'bmi': bmi,
    };
  }
}

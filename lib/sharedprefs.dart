import 'package:calcal/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

//EXPERIMENTING SHARED PREFS
class sharedprefs {
  sharedprefs._privateConstructor();

  static final sharedprefs instance = sharedprefs._privateConstructor();

  Future<void> addToSF(profileModel profile) async {
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

  Future<double> getWeight() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final double weight = prefs.getDouble('weight') ?? 0;
    return weight;
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

import 'package:calcal/sharedprefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage_state extends GetxController {
  // static homepage_state get instance => Get.find();

  //VALUE OF PROGRESS INDICATOR
  final RxDouble indvalue = 0.00.obs;
  final RxInt sumeat = 0.obs;
  final RxList foodList = [].obs;
  final RxList kcalList = [].obs;

  //----การคำนวณแปลงจาก calorie ผู้ใช้ไปเป็นเปอร์เซนต์----
  //----Formula: Eaten Kcal / User BMR = %Eaten
  void updateIndicator(int eaten) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(
        'indval',
        (prefs.getDouble('indval') ?? 0) +
            (eaten / (prefs.getInt('bmr') ?? 0)));
    indvalue.value = prefs.getDouble('indval') ?? 0;
    prefs.setInt('sumeat', (prefs.getInt('sumeat') ?? 0) + eaten);
    sumeat.value = prefs.getInt('sumeat') ?? 0;
  }

  void newBMR() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('sumeat', 0);
    prefs.setDouble('indval', 0);
    indvalue.value = prefs.getDouble('indval') ?? 0;
    sumeat.value = prefs.getInt('sumeat') ?? 0;
    prefs.remove('name');
    prefs.remove('kcal');
    foodList.value = [];
    kcalList.value = [];
  }

  //ฟังก์ชั่นคำนวณสี progress indicator ตาม % ของ calorie ที่กินไป
  Color calculateBackgroundColor({required double value}) {
    if (value > 0.75) {
      return Colors.red;
    } else if (value > 0.50) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }

  void addFoodList(String food) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('name', (prefs.getStringList('name') ?? []) + [food]);
  }

  void addKcalList(String kcal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('kcal', (prefs.getStringList('kcal') ?? []) + [kcal]);
    kcalList.add(prefs.getStringList('kcal') ?? []);
  }

  String getFoodAtIndex(int index) {
    if (index >= 0 && index < foodList.length) {
      return foodList[index];
    } else {
      return ''; // Return empty string if index is out of bounds
    }
  }
}

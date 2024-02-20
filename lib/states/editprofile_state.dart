import 'package:flutter/material.dart';
import 'package:get/get.dart';

class editprofileState extends GetxController {
  final weight = TextEditingController();
  final height = TextEditingController();
  final age = TextEditingController();
  final RxInt radioInd = 0.obs;

  void setRadioIndex(int index) {
    radioInd.value = index;
  }

  //----ฟังก์ชั่นการคำนวณ BMI แสดงบนหน้าโปรไฟล์
  double bmiCal(double weight, int height) {
    double heightM = height / 100;
    double bmi = weight / (heightM * heightM);
    return bmi;
  }

  //----ฟังก์ชั่นการคำนวณ BMR
  int bmrCal(double weight, int height, int age, int sex) {
    int bmr;
    //BMR * TDEE Formula (Harris Benedict Formula)
    //male (66 + (13.7 x weightKG) + (5 x heightCM) - (6.8 x age)) * 1.375
    //female (665 + (9.6 x weightKG) + (1.8 x heightCM) - (4.7 x age)) * 1.375
    switch (sex) {
      case 0:
        bmr = ((66 + (13.7 * weight) + (5 * height) - (6.8 * age)) * 1.375)
            .round();
        break;
      default:
        bmr = (665 + (9.6 * weight) + (1.8 * height) - (4.7 * age) * 1.375)
            .round();
    }
    return bmr;
  }
}

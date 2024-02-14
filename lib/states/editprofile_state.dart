import 'package:calcal/models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class editprofileState extends GetxController {
  final weight = TextEditingController();
  final height = TextEditingController();
  final age = TextEditingController();
  final RxInt radioInd = 0.obs;

  void setRadioIndex(int index) {
    radioInd.value = index;
  }

//TODO: BMI & BMR Calculator function
  //void BMICal
  //void BMRCal
}

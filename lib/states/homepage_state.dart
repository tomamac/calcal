import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homepage_state extends GetxController {
  static homepage_state get instance => Get.find();

  //VALUE OF PROGRESS INDICATOR
  RxDouble value = 0.00.obs;
  RxInt bmr = 0.obs;

  void setbmr(int bmr) {
    this.bmr.value = bmr;
  }

  //----TO BE ADDED----
  //----การคำนวณแปลงจาก calorie ผู้ใช้ไปเป็นเปอร์เซนต์----
  //----อาจต้องดึงค่าต่างๆจากหน้า profile มาคำนวณในนี้เพื่อแปลงเป็น BMR(calorie ที่ผู้ใช้ควรกิน)----

  //ฟังก์ชั่นคำนวณสี progress indicator ตาม % ของ calorie ที่กินไป
  Color calculateBackgroundColor({required double value}) {
    if (value > 0.60) {
      return Colors.red;
    } else if (value > 0.30) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }
}

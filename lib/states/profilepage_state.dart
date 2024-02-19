import "package:calcal/models/profile_model.dart";
import "package:get/get.dart";

class profilepageState extends GetxController {
  // static profilepage_state get instance => Get.find();
  final RxDouble weight = 0.0.obs;
  final RxInt height = 0.obs;
  final RxInt age = 0.obs;
  final RxString sex = ''.obs;
  final RxDouble bmi = 0.0.obs;

//----ค่าต่างๆในหน้า profile อัพเดทหลังยืนยันแก้ไขข้อมูล
  void updateData(profileModel profile) {
    weight.value = profile.weight;
    height.value = profile.height;
    age.value = profile.age;
    sex.value = profile.sex == 0 ? "ชาย" : "หญิง";
    bmi.value = profile.bmi;
  }
}

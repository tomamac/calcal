import 'package:get/get.dart';

class editprofileState extends GetxController {
  RxInt radioInd = 0.obs;

  void setRadioIndex(int index) {
    radioInd.value = index;
  }
}

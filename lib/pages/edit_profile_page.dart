import 'package:calcal/models/profile_model.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/sharedprefs.dart';
import 'package:calcal/states/editprofile_state.dart';
import 'package:calcal/states/homepage_state.dart';
import 'package:calcal/states/profilepage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class edit_profile_page extends StatelessWidget {
  const edit_profile_page({super.key});

//----หน้า Edit theme ไม่ติดไปด้วย(ข้างบนมันดำๆ ตัวหนังสือแปลกๆ)
//--Solution: ต้องใช้ scaffold หรือ material เวลาเปลี่ยนหน้าด้วยวิธี push
//--reference https://stackoverflow.com/questions/58678614/material-app-styles-doesnt-work-without-scaffold
  @override
  Widget build(BuildContext context) {
    final _state = Get.put(editprofileState());
    final _profilestate = Get.put(profilepageState());
    final _homepagestate = Get.put(homepage_state());
    return FutureBuilder(
      future: sharedprefs.instance.getProfile(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data! as Map;
          _state.initController(_state.weight, "weight");
          _state.initController(_state.height, "height");
          _state.initController(_state.age, "age");
          _state.initSex();

          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  backgroundImg(),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(75),
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            controller: _state.weight,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d*\.?\d{0,2}')),
                            ],
                            decoration: const InputDecoration(
                              hintText: 'น้ำหนัก (กก.)',
                              labelText: 'น้ำหนัก (กก.)',
                            ),
                          ),
                          TextFormField(
                            controller: _state.height,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: 'ส่วนสูง (ซม.)',
                              labelText: 'ส่วนสูง (ซม.)',
                            ),
                          ),
                          TextFormField(
                            controller: _state.age,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              hintText: 'อายุ (ปี)',
                              labelText: 'อายุ (ปี)',
                            ),
                          ),
                          Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: IconButton(
                                    disabledColor: Colors.white,
                                    color: Colors.grey[350],
                                    iconSize: 75,
                                    onPressed: _state.radioInd.value == 0
                                        ? null
                                        : ({index = 0}) {
                                            _state.setRadioIndex(index);
                                          },
                                    icon: const Icon(Icons.man),
                                    style: IconButton.styleFrom(
                                      disabledBackgroundColor: Colors.blue[200],
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: IconButton(
                                    disabledColor: Colors.white,
                                    color: Colors.grey[350],
                                    iconSize: 75,
                                    onPressed: _state.radioInd.value == 1
                                        ? null
                                        : ({index = 1}) {
                                            _state.setRadioIndex(index);
                                          },
                                    icon: const Icon(Icons.woman),
                                    style: IconButton.styleFrom(
                                      disabledBackgroundColor: Colors.pink[200],
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: palette.buttonColor,
                              ),
                              onPressed: () {
                                var weight = double.parse(_state.weight.text);
                                var height = int.parse(_state.height.text);
                                var age = int.parse(_state.age.text);
                                var sex = _state.radioInd.value;
                                var bmi = _state.bmiCal(weight, height);
                                var bmr = _state.bmrCal(
                                  weight,
                                  height,
                                  age,
                                  sex,
                                );
                                var oldbmr = data['bmr'];
                                final profile = profileModel(
                                  weight: weight,
                                  height: height,
                                  age: age,
                                  sex: sex,
                                  bmi: double.parse(bmi.toStringAsFixed(2)),
                                  bmr: bmr,
                                );
                                if (bmr != oldbmr) {
                                  _homepagestate.newBMR();
                                }
                                _profilestate.updateData(profile);
                                sharedprefs.instance.addprofileToSF(profile);
                                // sharedprefs.instance.setInt('sumeat', 0);

                                Get.back();
                              },
                              child: Text(
                                'บันทึก',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              'ยกเลิก',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

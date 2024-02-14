import 'package:calcal/pages/edit_profile_page.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/sharedprefs.dart';
import 'package:calcal/states/profilepage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    final _state = Get.put(profilepageState());
    return FutureBuilder(
      future: sharedprefs.instance.getProfile(),
      builder: (context, snapshot) {
        var data = snapshot.data! as Map;
        return SafeArea(
          child: Stack(
            children: [
              backgroundImg(),
              //----ตั้งแต่ส่วนนี้น่าจะ Refactor ได้??----
              Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: palette.textbgColor,
                      ),
                      padding: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: sizes.bigfont,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'น้ำหนัก:',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  _state.weight.value == ivalues.idouble
                                      ? data['weight'].toString()
                                      : _state.weight.toString(),
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  'กก.',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'ส่วนสูง:',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  _state.height.value == ivalues.iint
                                      ? data['height'].toString()
                                      : _state.height.toString(),
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  'ซม.',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'อายุ:  ',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  _state.age.value == ivalues.iint
                                      ? data['age'].toString()
                                      : _state.age.toString(),
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  'ปี',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'เพศ:',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  _state.sex.value == ivalues.istring
                                      ? data['sex'].toString()
                                      : _state.sex.toString(),
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'BMI:',
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                Text(
                                  _state.bmi.value == ivalues.idouble
                                      ? data['bmi'].toString()
                                      : _state.bmi.toString(),
                                  style: TextStyle(
                                    fontSize: sizes.bigfont,
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: (MediaQuery.of(context).size.width - 60) * 0.75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: palette.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Get.to(
                            const edit_profile_page(),
                          );
                        },
                        child: Text(
                          'แก้ไขข้อมูล',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: sizes.smallfont,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:calcal/pages/edit_profile_page.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: sizes.bigfont,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'น้ำหนัก: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'ส่วนสูง: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'อายุ: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'เพศ: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'BMI: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      const Spacer(),
                    ],
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
  }
}

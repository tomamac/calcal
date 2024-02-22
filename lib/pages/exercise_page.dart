import 'package:calcal/pages/main/advice_pages/plank_page.dart';
import 'package:calcal/pages/main/advice_pages/run_page.dart';
import 'package:calcal/pages/main/advice_pages/squat_page.dart';
import 'package:calcal/pages/main/advice_pages/swim_page.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class exercise_page extends StatelessWidget {
  const exercise_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImg(),
            Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width - 20) * 0.6,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: palette.textbgColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'การออกกำลังกายที่แนะนำ',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: sizes.smallfont),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: palette.textbgColor,
                    ),
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          const squat_page(),
                        );
                      },
                      leading: Image.asset(
                        'images/squat.png',
                        width: 100,
                        height: 100,
                      ),
                      title: Text(
                        'สควอช',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: palette.textbgColor,
                    ),
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          const swim_page(),
                        );
                      },
                      leading: Image.asset(
                        'images/swim.png',
                        width: 100,
                        height: 100,
                      ),
                      title: Text(
                        'ว่ายน้ำ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: palette.textbgColor,
                    ),
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          const run_page(),
                        );
                      },
                      leading: Image.asset(
                        'images/run.png',
                        width: 100,
                        height: 100,
                      ),
                      title: Text(
                        'วิ่ง',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    height: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: palette.textbgColor,
                    ),
                    child: ListTile(
                      onTap: () {
                        Get.to(
                          const plank_page(),
                        );
                      },
                      leading: Image.asset(
                        'images/plank.png',
                        width: 100,
                        height: 100,
                      ),
                      title: Text(
                        'แพลงค์',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: sizes.bigfont,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: palette.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'BACK',
                      style: TextStyle(
                        fontSize: sizes.smallfont,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:calcal/pages/exercise_page.dart';
import 'package:calcal/reuse.dart';
import 'package:calcal/states/homepage_state.dart';
import 'package:calcal/states/profilepage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class advice_page extends StatelessWidget {
  const advice_page({super.key});

  @override
  Widget build(BuildContext context) {
    final _state = Get.put(homepage_state());
    final _profilestate = Get.put(profilepageState());
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int spBMR = snapshot.data!.getInt('bmr') ?? 0;
          return SafeArea(
            child: Stack(
              children: [
                backgroundImg(),
                Obx(
                  () => SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Stack(
                            children: [
                              Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: palette.progressmidColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'images/burger.png',
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    height: 150,
                                    child: CircularProgressIndicator(
                                      value: _state.indvalue.value,
                                      backgroundColor: palette.progressbgColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        _state.calculateBackgroundColor(
                                            value: _state.indvalue.value),
                                      ),
                                      strokeWidth: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _state.updateIndicator(100);
                          },
                          child: Text('test progress'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: palette.textbgColor,
                          ),
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            _profilestate.bmr.value == ivalues.iint
                                ? snapshot.data!.getInt('bmr') == null
                                    ? '${_state.sumeat} / ${_profilestate.bmr.value} Kcal'
                                    : '${_state.sumeat} / ${snapshot.data!.getInt('bmr')} Kcal'
                                : '${_state.sumeat} / ${_profilestate.bmr.value} Kcal',
                            style: TextStyle(fontSize: sizes.smallfont),
                          ),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: palette.textbgColor),
                          child: Text(
                            _state.sumeat.value > spBMR
                                ? "การรับประทานเกิน Kcal ที่กำหนด\nอาจส่งผลเสียต่อสุขภาพได้\nดูคำแนะนำการออกกำลังกายได้ข้างล่าง"
                                : _state.sumeat.value > (spBMR * 0.5)
                                    ? "รักษาปริมาณการรับประทานให้อยู่ในเกณฑ์จะสามารถคงน้ำหนักหรือลดน้ำหนักได้\nและเป็นผลดีต่อสุขภาพ"
                                    : "รับประทานน้อยกว่ากำหนด",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: sizes.smallfont - 2,
                            ),
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: palette.buttonColor,
                          ),
                          onPressed: () {
                            Get.to(
                              exercise_page(),
                            );
                          },
                          child: Text(
                            'การออกกำลังกายที่แนะนำ',
                            style: TextStyle(fontSize: sizes.smallfont),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

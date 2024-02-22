import 'package:calcal/reuse.dart';
import 'package:calcal/states/homepage_state.dart';
import 'package:calcal/states/manualpage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class manual_page extends StatelessWidget {
  const manual_page({super.key});

  @override
  Widget build(BuildContext context) {
    final _state = Get.put(ManualPageState());
    final _homepagestate = Get.put(homepage_state());
    return SafeArea(
      child: Stack(
        children: [
          backgroundImg(),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                TextFormField(
                  controller: _state.name,
                  decoration: const InputDecoration(
                    hintText: 'ชื่ออาหาร',
                    labelText: 'ชื่ออาหาร',
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                TextFormField(
                  controller: _state.kcal,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    hintText: 'Kcal',
                    labelText: 'Kcal',
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Container(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_state.name.text != '' && _state.kcal.text != '') {
                        _homepagestate.addFoodList(_state.name.text);
                        _homepagestate.addKcalList(_state.kcal.text);
                        _homepagestate.updateIndicator(
                          int.parse(_state.kcal.text),
                        );
                        Get.showSnackbar(
                          const GetSnackBar(
                            message: 'เพิ่มเรียบร้อยแล้ว',
                            duration: Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: palette.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'ยืนยัน',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: sizes.smallfont,
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

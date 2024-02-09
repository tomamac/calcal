import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';

class edit_profile_page extends StatelessWidget {
  const edit_profile_page({super.key});

//----หน้า Edit theme ไม่ติดไปด้วย(ข้างบนมันดำๆ ตัวหนังสือแปลกๆ)
//--Solution: ต้องใช้ scaffold หรือ material เวลาเปลี่ยนหน้าด้วยวิธี push
//--reference https://stackoverflow.com/questions/58678614/material-app-styles-doesnt-work-without-scaffold
  @override
  Widget build(BuildContext context) {
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
                      decoration: const InputDecoration(
                        hintText: 'น้ำหนัก',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'ส่วนสูง',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'อายุ',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Male'),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Female'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('บันทึก'),
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
  }
}

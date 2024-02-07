import 'package:calcal/pages/home_page.dart';
import 'package:calcal/pages/profile_page.dart';
import 'package:calcal/states/mainpage_state.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottom_nav extends StatelessWidget {
  final List<Widget> screens = [
    const home_page(),
    const profile_page(),
  ];
  bottom_nav({super.key});

  @override
  Widget build(BuildContext context) {
    final PagesState = Get.put(MainPageState());
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: PagesState.currentIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: palette.bnavbgColor,
          currentIndex: PagesState.currentIndex.value,
          onTap: (index) {
            PagesState.setPage(index);
          },
          selectedItemColor: Theme.of(context).colorScheme.primary,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.microwave),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'PROFILE',
            ),
          ],
        ),
      ),
    );
  }
}

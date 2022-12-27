import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../constants/strings_manager.dart';
import '../../controller/home_controller.dart';

class BuildBottomNavBar extends StatelessWidget {
  const BuildBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: (index) => controller.changeCurrentIndex(index),
          items: _BottomNavItems(),

        );
      },

    );
  }

  List<BottomNavigationBarItem> _BottomNavItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined), label: AppStrings.account),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border), label: AppStrings.wishlist),
      BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow_rounded), label: AppStrings.myLearnign),
      BottomNavigationBarItem(
          icon: Icon(Icons.search), label: AppStrings.search),
      BottomNavigationBarItem(
          icon: Icon(Icons.star), label: AppStrings.features),
    ];
  }
}

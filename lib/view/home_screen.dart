import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:get/get.dart';


import '../controller/home_controller.dart';
import '../widgets/home_screen_widgets/build_bottom_nav_bar.dart';
import '../widgets/home_screen_widgets/check_internet.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined),),
      // ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return CheckInternet(controller: controller);
        },
      ),
      bottomNavigationBar: BuildBottomNavBar(),
    );
  }
}




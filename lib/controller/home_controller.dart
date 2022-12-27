import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/bottomNavBarScreens/account_screen.dart';
import '../view/bottomNavBarScreens/featured.dart';
import '../view/bottomNavBarScreens/myLearning_screen.dart';
import '../view/bottomNavBarScreens/search.dart';
import '../view/bottomNavBarScreens/wishlist.dart';


class HomeController extends GetxController{

List<Widget>screens=[
  AccountScreen(),
  Wishlist(),
  MyLearningScreen(),
  SearchScreen(),
  FeaturesScreen(),
];
int currentIndex=2;
void changeCurrentIndex(int index){
  currentIndex=index;
  update();
}

}
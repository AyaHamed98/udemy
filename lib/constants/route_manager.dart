

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone_flutter/constants/strings_manager.dart';
import 'package:udemy_clone_flutter/view/home_screen.dart';

import '../view/auth_view/forget_pass_screen.dart';
import '../view/auth_view/sign_in.dart';
import '../view/auth_view/sign_up_screen.dart';
import '../view/bottomNavBarScreens/account_screen.dart';

class Routes{
  static const String homeScreen="/";
  static const String accountScreen="account screen";
  static const String signUpScreen="sign up";
  static const String signInScreen="sign in";
  static const String forgotPassword="forgot password screen";

}

class RouteGenerator{

  static Route getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.homeScreen:
        return
          MaterialPageRoute(builder: (BuildContext context)=>
              HomeScreen()
          );

      case Routes.accountScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> AccountScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> SignUpScreen());
      case Routes.signInScreen:
        return MaterialPageRoute(builder: (BuildContext context)=> SignInScreen());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (BuildContext context)=> ForgotPasswordScreen());

      default:
        return unDefinedRoute();

    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(AppStrings.noRouteFound),
          ),
          body:const Center(child: Text(AppStrings.noRouteFound)),
        ));
  }
}
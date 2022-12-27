import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udemy_clone_flutter/constants/font_manager.dart';
import 'package:udemy_clone_flutter/constants/style_manager.dart';
import 'package:udemy_clone_flutter/constants/vlaues_manager.dart';

import 'color_manager.dart';

class AppTheme {
  static ThemeData getLightTheme() {

    return ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        primaryColorDark: AppColors.black,
        primaryColorLight: AppColors.white,
        primaryColor: AppColors.black,
        appBarTheme: AppBarTheme(
        color: AppColors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.white
    ),

    iconTheme: IconThemeData(
    color: AppColors.darkGrey,
    size: AppSize.s32
    ),

    ),
      iconTheme: IconThemeData(
          color: AppColors.darkGrey
      ),

    tabBarTheme: TabBarTheme(
      unselectedLabelColor: AppColors.darkGrey,
      labelColor: AppColors.black,

    ),

    textTheme: TextTheme(
    headline1: getBoldStyle(color: AppColors.black,fontSize: AppSize.s24),
    headline2: getmediumStyle(color: AppColors.darkGrey,fontSize: AppSize.s18),
    headline5: getSemiBoldStyle(color: AppColors.deepPurpleAccent,fontSize: AppSize.s18),
    headline3: getBoldStyle(color: AppColors.deepPurpleAccent,fontSize: AppSize.s24),
    headline4: getLightStyle(color: AppColors.black,fontSize: AppSize.s14),
        headline6: getBoldStyle(color: AppColors.black,fontSize: AppSize.s20),
        subtitle1: getBoldStyle(color: AppColors.black,fontSize: AppSize.s32),
        subtitle2: getmediumStyle(color: AppColors.darkGrey,fontSize: FontSize.s20),
        overline: getSemiBoldStyle(color: AppColors.black,fontSize: AppSize.s18),

        caption: getSemiBoldStyle(color: AppColors.orange)
    //

    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: AppColors.deepPurpleAccent,
          onPrimary: AppColors.white,
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p28,vertical: AppPadding.p12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(AppSize.s60),
          )
      )
    ),
    cardTheme: CardTheme(
    color: AppColors.white,
    elevation: AppSize.s1_5,
    shadowColor: AppColors.darkGrey
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.white,
    elevation: AppSize.s1_5,
    selectedItemColor: AppColors.black,
    unselectedItemColor: AppColors.darkGrey,
    selectedLabelStyle: getRegularStyle(color: AppColors.black,fontSize: AppSize.s9),
    unselectedLabelStyle: getRegularStyle(color: AppColors.darkGrey,fontSize: AppSize.s9),
    selectedIconTheme:IconThemeData(color: AppColors.black,size: AppSize.s24) ,
    unselectedIconTheme: IconThemeData(color: AppColors.darkGrey,size: AppSize.s24)
    ),


    inputDecorationTheme: InputDecorationTheme(
    // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p2),
    // hint style
    hintStyle: getRegularStyle(color: AppColors.lightGrey, fontSize: AppSize.s14),
    labelStyle: getmediumStyle(color: AppColors.lightGrey, fontSize: AppSize.s14),
    errorStyle: getRegularStyle(color: AppColors.error),

    // enabled border style
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.lightGrey, width: AppSize.s1_5),
    borderRadius: BorderRadius.circular(AppSize.s9)),
    // focused border style

    focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: AppColors.deepPurpleAccent, width: AppSize.s1_5),
    borderRadius: BorderRadius.circular(AppSize.s9)
    ),

    // error border style
    errorBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: AppColors.error, width: AppSize.s1_5),
    borderRadius:  BorderRadius.all(Radius.circular(AppSize.s9))),


        // focuse border style
        focusedErrorBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: AppColors.deepPurpleAccent, width: AppSize.s1_5),
    borderRadius: BorderRadius.all(Radius.circular(AppSize.s9)
    )
    ),

      prefixIconColor: AppColors.lightGreen

    ),

    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      primaryColorDark: AppColors.black,
      primaryColorLight: AppColors.white,
      primaryColor: AppColors.white,
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.black
        ),

        iconTheme: IconThemeData(
            color: AppColors.white,
            size: AppSize.s32
        ),

      ),
      iconTheme: IconThemeData(
        color: AppColors.darkGrey
      ),

      tabBarTheme: TabBarTheme(
        unselectedLabelColor: AppColors.white,
        labelColor: AppColors.white,

      ),

      textTheme: TextTheme(
          headline1: getBoldStyle(color: AppColors.white,fontSize: AppSize.s24),
          headline2: getmediumStyle(color: AppColors.darkGrey,fontSize: AppSize.s18),
          headline5: getSemiBoldStyle(color: AppColors.deepPurpleAccent,fontSize: AppSize.s18),
          headline3: getBoldStyle(color: AppColors.deepPurpleAccent,fontSize: AppSize.s24),
          headline4: getLightStyle(color: AppColors.white,fontSize: AppSize.s14),
          headline6: getBoldStyle(color: AppColors.white,fontSize: AppSize.s20),
          subtitle1: getBoldStyle(color: AppColors.white,fontSize: AppSize.s32),
          subtitle2: getmediumStyle(color: AppColors.darkGrey,fontSize: FontSize.s20),
          overline: getSemiBoldStyle(color: AppColors.white,fontSize: AppSize.s18),

          caption: getSemiBoldStyle(color: AppColors.orange)
        //

      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: AppColors.deepPurpleAccent,
              onPrimary: AppColors.black,
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p28,vertical: AppPadding.p12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(AppSize.s60),
              )
          )
      ),
      cardTheme: CardTheme(
          color: AppColors.black,
          elevation: AppSize.s1_5,
          shadowColor: AppColors.darkGrey
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.black,
          elevation: AppSize.s1_5,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.darkGrey,
          selectedLabelStyle: getRegularStyle(color: AppColors.white,fontSize: AppSize.s9),
          unselectedLabelStyle: getRegularStyle(color: AppColors.darkGrey,fontSize: AppSize.s9),
          selectedIconTheme:IconThemeData(color: AppColors.white,size: AppSize.s24) ,
          unselectedIconTheme: IconThemeData(color: AppColors.darkGrey,size: AppSize.s24)
      ),


      inputDecorationTheme: InputDecorationTheme(
        // content padding
          contentPadding: const EdgeInsets.all(AppPadding.p2),
          // hint style
          hintStyle: getRegularStyle(color: AppColors.lightGrey, fontSize: AppSize.s14),
          labelStyle: getmediumStyle(color: AppColors.lightGrey, fontSize: AppSize.s14),
          errorStyle: getRegularStyle(color: AppColors.error),

          // enabled border style
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lightGrey, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s9)),
          // focused border style

          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.deepPurpleAccent, width: AppSize.s1_5),
              borderRadius: BorderRadius.circular(AppSize.s9)
          ),

          // error border style
          errorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.error, width: AppSize.s1_5),
              borderRadius:  BorderRadius.all(Radius.circular(AppSize.s9))),


          // focuse border style
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.deepPurpleAccent, width: AppSize.s1_5),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s9)
              )
          ),

          prefixIconColor: AppColors.lightGrey

      ),

    );
  }
}

/*
NAME         SIZE  WEIGHT  SPACING
headline1    96.0  light   -1.5
headline2    60.0  light   -0.5
headline3    48.0  regular  0.0
headline4    34.0  regular  0.25
headline5    24.0  regular  0.0
headline6    20.0  medium   0.15
subtitle1    16.0  regular  0.15
subtitle2    14.0  medium   0.1
body1        16.0  regular  0.5   (bodyText1)
body2        14.0  regular  0.25  (bodyText2)
button       14.0  medium   1.25
caption      12.0  regular  0.4
overline     10.0  reg
 */
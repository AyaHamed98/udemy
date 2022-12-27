import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(Color color,double fontSize,FontWeight fontWeight){
  return TextStyle(color:color ,fontSize: fontSize,fontWeight:fontWeight ,fontFamily:FontConstants.poppinsFontFamily);;
}
TextStyle getSemiBoldStyle({required Color color, double fontSize=18}){
return _getTextStyle(color, fontSize, FontWeightManager.semiBold);
}

TextStyle getLightStyle({required Color color, double fontSize=18}){
  return _getTextStyle(color, fontSize, FontWeightManager.light);
}
TextStyle getBoldStyle({required Color color, double fontSize=18}){
  return _getTextStyle(color, fontSize, FontWeightManager.bold);
}
TextStyle getmediumStyle({required Color color, double fontSize=18}){
  return _getTextStyle(color, fontSize, FontWeightManager.medium);
}
TextStyle getRegularStyle({required Color color, double fontSize=18}){
  return _getTextStyle(color, fontSize, FontWeightManager.regular);
}





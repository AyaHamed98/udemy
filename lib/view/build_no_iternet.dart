import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/assets_manager.dart';
import '../constants/strings_manager.dart';
import '../constants/vlaues_manager.dart';


class NoInterNet extends StatelessWidget {
  const NoInterNet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: AppSize.s100,),
          Image.asset(ImageAssets.noInterNet,width: AppSize.s160,),
          SizedBox(height: AppSize.s24,),
          Text(AppStrings.noInternet,style:Theme.of(context).textTheme.headline1,),
          SizedBox(height: AppSize.s24,),
          Text(AppStrings.pullOrRefresh,style:Theme.of(context).textTheme.headline2,),
        ],
      ),
    );
  }
}

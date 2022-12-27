import 'package:flutter/material.dart';

import '../constants/vlaues_manager.dart';
class NoDataWidget extends StatelessWidget {
  const NoDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/1334079.png",width: AppSize.s160,),
          SizedBox(height: AppSize.s20,),
          Text("We're having trouble \n loading your content ",style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: AppSize.s20,),
          Text("Please pull to refresh",style: Theme.of(context).textTheme.headline2),
        ],
      ),
    );
  }
}

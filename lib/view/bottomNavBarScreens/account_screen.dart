
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/color_manager.dart';
import '../../constants/vlaues_manager.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",style: Theme.of(context).textTheme.headline1,),
        actions:[
          IconButton(
          onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined),),
        ] 
        
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(AppSize.s9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.perm_identity_sharp,
                    color: AppColors.deepPurpleAccent,
                    size: AppSize.s120,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Aya Hamed", style: Theme
                      .of(context)
                      .textTheme
                      .headline1,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Aya Hamed@gmail.com", style: Theme
                        .of(context)
                        .textTheme
                        .headline2, ),
                    Icon(Icons.email, color: AppColors.deepPurpleAccent,),
                  ],
                ),
                SizedBox(height: AppSize.s14,),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Text("Switch to instructor view", style: Theme
                      .of(context)
                      .textTheme
                      .headline5,),
                ),
                SizedBox(height: AppSize.s14,),
                Text("Video preferences", style: Theme
                    .of(context)
                    .textTheme
                    .headline2, textAlign: TextAlign.end,),
                SizedBox(height: AppSize.s14,),
                BuildGestureDetector(() {}, "Download options"),
                SizedBox(height: AppSize.s14,),
                BuildGestureDetector(() {}, "Video playback options"),
                SizedBox(height: AppSize.s30,),
                Text("Accout setting", style: Theme
                    .of(context)
                    .textTheme
                    .headline2,),
                SizedBox(height: AppSize.s14,),
                BuildGestureDetector(() {}, "Account security"),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "Email notification preferences"),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "learning reminders"),
                SizedBox(height: AppSize.s30,),

                Text("Help and support", style: Theme
                    .of(context)
                    .textTheme
                    .headline2,),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "About Udemy"),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "Frequentiy asked questions"),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "Shared the Udemy app "),
                SizedBox(height: AppSize.s30,),



                Text("Diagnostics", style: Theme
                    .of(context)
                    .textTheme
                    .headline2,),
                SizedBox(height: AppSize.s14,),

                BuildGestureDetector(() {}, "Status"),
                SizedBox(height: AppSize.s14,),
               Align(
                   alignment: Alignment.center,
                   child: Text("SignOut",style: Theme.of(context).textTheme.headline5,)),

                SizedBox(height: AppSize.s14,),


              ],
            ),
          ),
        ),
      ),
    );
  }


}

class BuildGestureDetector extends StatelessWidget {
  const BuildGestureDetector(this.onTap, this.txt, {Key? key,})
      : super(key: key);
  final void Function()? onTap;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(txt, style: Theme
              .of(context)
              .textTheme
              .overline,),
          Icon(Icons.arrow_forward_ios_outlined),

        ],),
    );
  }
}

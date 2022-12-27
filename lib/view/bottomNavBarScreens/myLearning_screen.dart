
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/vlaues_manager.dart';
import '../../widgets/mylearning_widgets/mylearning_items.dart';
class MyLearningScreen extends StatelessWidget {
  const MyLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text("My Courses",style: Theme.of(context).textTheme.headline1,),
            actions:[
              IconButton(
                onPressed: () {}, icon: Icon(Icons.search),),
              IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined),),
            ],
          bottom: TabBar(
            tabs: [
              Tab(icon:null ,text: "All ",),
              Tab(icon:null ,text: "Downloaded ",),
              Tab(icon:null ,text: "Archived ",),
              Tab(icon:null ,text: "Favorited ",),

            ],
            indicatorColor: Colors.transparent,
          ),
        ),

        body:TabBarView(children: [
          MyLearningItems(),
          MyLearningItems(),
          MyLearningItems(),
          MyLearningItems(),
        ]) ,
      ),
    );
  }

  Container _tabIcon(String txt) {
    return Container(
      child: Text(txt),
              padding:  EdgeInsets.symmetric(vertical: AppPadding.p8,horizontal: AppPadding.p14),
              decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadiusDirectional.circular(AppSize.s24),

            ),);
  }
}




  /*

   */


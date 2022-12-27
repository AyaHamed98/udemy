import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/vlaues_manager.dart';
import '../../widgets/no_data_widget.dart';
import '../../widgets/wishlist_widets/wishlist_items.dart';


class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Wishlist",style: Theme.of(context).textTheme.headline1,),
            actions:[
              IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined),),
            ]

        ),

        body: NoDataWidget()) ;

    //   Padding(
    //   padding: const EdgeInsets.all(AppSize.s18),
    //   child: ListView.separated(
    //     itemCount: 2,
    //     itemBuilder: (context, index) => WishListItems(),
    //     separatorBuilder: (BuildContext context, int index) =>
    //         Divider(
    //           // color: AppColors.black,
    //           // height: AppSize.s20,
    //           // thickness: .5,
    //         ),),
    // );
  }
}




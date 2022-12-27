import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants/vlaues_manager.dart';

class WishListItems extends StatelessWidget {
  const WishListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/udemy_logo.png", width: AppSize.s100,),
          SizedBox(width: AppSize.s9,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: AppSize.s200,
                child: Text("dlkjd jfdkk akj  kjfooioioiohhghid", style: Theme
                    .of(context)
                    .textTheme
                    .headline3,
                  maxLines: 2,
                ),
              ),
              Text("dlkjd jfdkk akj  kjfd", style: Theme
                  .of(context)
                  .textTheme
                  .headline2,),
              Row(
                children: [
                  Text("4.5", style: Theme
                      .of(context)
                      .textTheme
                      .caption,),
                  RatingBar.builder(
                    initialRating: 2.2,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize : AppSize.s14,
                    itemPadding: EdgeInsets.symmetric(horizontal: AppPadding.p2),
                    itemBuilder: (context, _) =>
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text("(45)"),

                ],
              ),
              Text("EGP 1,299.99",style: Theme.of(context).textTheme.headline6,),

            ],
          ),
        ],
      ),
    );
  }
}

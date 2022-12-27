import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udemy_clone_flutter/constants/vlaues_manager.dart';
class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Featured",style: Theme.of(context).textTheme.headline1,),
          actions:[
            IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined),),
          ]

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("Learning that fits",style: Theme.of(context).textTheme.subtitle1,),
            Text("Skill for you present(and future)",style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: AppSize.s12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Categories",style: Theme.of(context).textTheme.headline1),
              Text("Sea all",style: Theme.of(context).textTheme.headline5),
            ],),
            SizedBox(height: AppSize.s9,),
            CategoryItems(),
            SizedBox(height: AppSize.s9,),
            buildRichText(context,"Business"),
            SizedBox(height: AppSize.s9,),
            CourseItems(),
            buildRichText(context,"Personal Development"),
            SizedBox(height: AppSize.s9,),
            CourseItems(),

          ],
        ),
      ),
    );
  }

  RichText buildRichText(BuildContext context,String txt) {
    return RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Top Courses in ",style: Theme.of(context).textTheme.headline1 ),
                  TextSpan(text: txt,style: Theme.of(context).textTheme.headline3 ),
                ]
              )
          );
  }
}
class CategoryItems extends StatelessWidget {
  const CategoryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s100,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .3,
            mainAxisSpacing: AppSize.s12,
            crossAxisSpacing: AppSize.s9,
          ),
          itemCount: 14,
          itemBuilder: (context,index)=>Container(
            padding: EdgeInsetsDirectional.all(AppPadding.p14),
            child: Text("Developer",style: Theme.of(context).textTheme.headline4,),
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadiusDirectional.circular(AppSize.s32),

            ),
          )
      ),
    );
  }
}
class CourseItems extends StatelessWidget {
  const CourseItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: ListView.separated(
        shrinkWrap: true,
        physics:NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) =>SizedBox(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Image.asset("assets/images/udemy.png",width: AppSize.s200,),
              Text("data",style: Theme.of(context).textTheme.headline6,maxLines: 2,),
              Text("stev",style: Theme.of(context).textTheme.headline2,),
              Row(children: [
                Text("4.5",style: Theme.of(context).textTheme.caption,),
                RatingBar.builder(
                  unratedColor: Theme.of(context).primaryColor,
                  initialRating: 4.2,
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
                Text("(45)",style: Theme.of(context).textTheme.headline2,),

              ],),
              Text("EGP719.99",style: Theme.of(context).textTheme.headline6,maxLines: 2,),

            ],
          ),
        ), separatorBuilder: (BuildContext context, int index) =>SizedBox(width: AppSize.s12,),

      ),
    );
  }
}


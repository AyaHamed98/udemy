import 'package:flutter/material.dart';

import '../../constants/vlaues_manager.dart';

class MyLearningItems extends StatelessWidget {
  const MyLearningItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (context, i) => _item(context),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: AppSize.s20,),
      ),
    );
  }

  Column _item(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/udemy_logo.png", width: AppSize.s60,),
              SizedBox(width: AppSize.s9,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSize.s200,
                    child: Text("dlkjd jfdkk akj  kjfoo.......ioioiohhghid", style: Theme
                        .of(context)
                        .textTheme
                        .overline,
                      maxLines: 2,
                    ),
                  ),
                  Text("dlkjd jfdkk akj  kjfd", style: Theme
                      .of(context)
                      .textTheme
                      .headline2,),
                  Icon(Icons.person),
                  Text("60\% complete",style: Theme.of(context).textTheme.headline2,),

                ],
              ),
            ],
          ),
        ),
      ],
    ) ;
  }
}

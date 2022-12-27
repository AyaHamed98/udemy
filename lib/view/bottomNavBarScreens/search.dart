import 'package:flutter/material.dart';
import 'package:udemy_clone_flutter/constants/vlaues_manager.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: AppPadding.p8,bottom: AppPadding.p8),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
        ),
        actions: [
          Icon(Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}

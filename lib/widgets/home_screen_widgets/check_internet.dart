import 'package:flutter/cupertino.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../../controller/home_controller.dart';
import '../../view/build_no_iternet.dart';

class CheckInternet extends StatelessWidget {
  const CheckInternet({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (BuildContext context,
          ConnectivityResult connectivity,
          Widget child,) {
        final bool connected = connectivity != ConnectivityResult.none;
        if (connected) {
          return controller.screens[controller.currentIndex];
        } else {
          return NoInterNet();
        }
      },
      child: SizedBox(),
    );
  }
}

import 'package:get/get.dart';

import '../model/user_model.dart';
import '../repository/firestore_user.dart';


class UserController extends GetxController{

  UserModel? user;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }
   getUserData()async{
    await FireStoreUser().getUserFromFirebase().then((value) {
      user=UserModel.fromJson(value);
    });
  }


}
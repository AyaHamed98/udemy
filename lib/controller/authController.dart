
import 'package:firebase_auth_dart/firebase_auth_dart.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../constants/color_manager.dart';
import '../constants/route_manager.dart';
import '../model/user_model.dart';
import '../repository/firestore_user.dart';
class AuthController extends GetxController{

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  FirebaseAuth _auth =FirebaseAuth.instance;
  GlobalKey<FormState>formKey=GlobalKey();

  Future<void>signUpWithEmailAndPassword()async{
    try {
      await _auth.createUserWithEmailAndPassword(
       emailController.text,
      passwordController.text,
      ).then(( value)async {
            await saveData( value);
          Get.offAllNamed(Routes.homeScreen);

      });

    } on FirebaseException catch (e) {
      String title=e.code.replaceAll(RegExp("-"), " ");
      String message="";
      if (e.code == 'weak-password') {
       message="The password provided is too weak";
      } else if (e.code == 'email-already-in-use') {
        message="The account already exists for that email";
      }
      Get.snackbar(title, message);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }



  Future<void> saveData( value)async {
      await FireStoreUser().addUserForFireStore(UserModel(
        id: value.user!.uid,
        name: nameController.text==null?value.user?.displayName:nameController.text,
        email: value.user!.email,
        pic: ""
    ));
  }




  Future<void>signInWithEmailAndPassword()async{
    try {
         await _auth.signInWithEmailAndPassword(
           emailController.text,passwordController.text,
      ).then((value)async{
        Get.offAllNamed(Routes.homeScreen);
        emailController.clear();
         });
    } on FirebaseException catch (e) {
      String title=e.code.replaceAll(RegExp("-"), " ");
      String message="";
      if (e.code == 'user-not-found') {
        message='No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message="Wrong password provided for that user.";
      }
      Get.snackbar(title, message);
    }catch(e){
      Get.snackbar("Error!", e.toString());

    }
  }




  void resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);

      update();
      Get.back();
    } on FirebaseException catch (error) {
      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';

      if (error.code == 'user-not-found') {
        message =
        ' Account does not exists for that $email.. Create your account by signing up..';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.deepPurpleAccent,
        colorText: AppColors.white,
      );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.deepPurpleAccent,
        colorText: AppColors.white,
      );
    }
  }


  void signOutFromApp() async {
    try {
      await _auth.signOut();
      update();

      Get.offNamed(Routes.signUpScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.deepPurpleAccent,
        colorText: AppColors.white,
      );
    }
  }

}
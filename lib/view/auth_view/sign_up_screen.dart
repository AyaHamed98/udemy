import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../constants/route_manager.dart';
import '../../constants/strings_manager.dart';
import '../../constants/vlaues_manager.dart';
import '../../controller/authController.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
 final  controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.all(AppSize.s16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: AppSize.s160,
                  ),
                  Text(
                    "SignUp",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: AppSize.s60,
                  ),
                  TextFormField(
                    //controller: controller.nameController,
                    decoration: InputDecoration(
                      hintText: "Nmae",
                    ),
                    validator: (value) {
                      if (value.toString().length <= 2 ||
                          !RegExp(AppStrings.validationName).hasMatch(value!)) {
                        return 'Enter valid name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  TextFormField(
                   // controller: controller.emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    validator: (value) {
                      if (
                          !RegExp(AppStrings.validationEmail).hasMatch(value!)) {
                        return 'Enter valid name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  TextFormField(
                    //controller: controller.passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    validator: (value) {
                      if (value.toString().length < 6) {
                        return 'Password should be longer or equal to 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  ElevatedButton(onPressed: () {
                    if(controller.formKey.currentState!.validate()){
                      controller.signUpWithEmailAndPassword();
                    }

                  }, child: Text("Sign up")),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

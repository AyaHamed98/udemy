import 'package:get/get.dart';
import '../controller/authController.dart';
import '../controller/home_controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => AuthController());
  }

}
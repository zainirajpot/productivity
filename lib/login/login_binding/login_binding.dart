import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:productivity/login/login_controller/login_controller.dart';

class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController(
    ));
  }
}
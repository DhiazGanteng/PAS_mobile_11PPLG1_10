import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controller/auth_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}

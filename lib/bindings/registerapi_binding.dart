import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controllers/registerapi_controller.dart';

class RegisterapiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterapiController>(() => RegisterapiController());
  }

}
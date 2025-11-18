import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controller/prodak_controller.dart';
import 'package:pas_mobile_11pplg1_10/controller/prodak_controller.dart';

class ProdakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProdakController>(() => ProdakController());
  }
}
  

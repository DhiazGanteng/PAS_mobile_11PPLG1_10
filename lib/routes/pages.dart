import 'package:get/get_navigation/get_navigation.dart';
import 'package:pas_mobile_11pplg1_10/bindings/loginapi_binding.dart';
import 'package:pas_mobile_11pplg1_10/bindings/registerapi_binding.dart';
import 'package:pas_mobile_11pplg1_10/bindings/splashscreen_binding.dart';
import 'package:pas_mobile_11pplg1_10/pages/home_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/loginapi_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/registerapi_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/splashscreen_page.dart';
import 'package:pas_mobile_11pplg1_10/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.homepage, page: () => HomePage()),
    GetPage(
      name: AppRoutes.registerapi,
      binding: RegisterapiBinding(),
      page: () => RegisterapiPage(),
    ),
    GetPage(
      name: AppRoutes.loginapi,
      binding: LoginBindingApi(),
      page: () => LoginApiPage(),
    ),
    GetPage(
      name: AppRoutes.splashscreen,
      binding: SplashscreenBinding(),
      page: () => SplashscreenPage(),
    ),
  ];
}
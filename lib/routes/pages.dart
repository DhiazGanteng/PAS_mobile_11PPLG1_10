import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 🧩 Import semua bindings
import 'package:pas_mobile_11pplg1_10/bindings/login_binding.dart';
import 'package:pas_mobile_11pplg1_10/bindings/prodak_binding.dart';
import 'package:pas_mobile_11pplg1_10/bindings/profile_binding.dart';
import 'package:pas_mobile_11pplg1_10/bindings/splashscreen_binding.dart';



// 📄 Import semua pages
import 'package:pas_mobile_11pplg1_10/pages/login_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/main_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/prodak_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/profile_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/splashscreen_page.dart';



// 🗺️ Import routes
import 'package:pas_mobile_11pplg1_10/routes/routes.dart';

class AppPages {
  // ✅ Semua route didefinisikan di sini
  static final pages = [
    GetPage(
      name: AppRoutes.splashscreen,
      page: () => SplashscreenPage(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
    ),

    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.prodak,
      page: () => ProdakPage(),
      binding: ProdakBinding(),
    ),
   
  ];
}

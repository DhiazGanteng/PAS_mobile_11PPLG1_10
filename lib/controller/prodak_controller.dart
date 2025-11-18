import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg1_10/models/prodak_models.dart';

class ProdakController extends GetxController {
  var isLoading = false.obs;
  var standings = <ProdakModel>[].obs;

  get isMobile => null;

  get currentIndex => null;

  get changePage => null;

  get pages => null;

  @override
  void onInit() {
    super.onInit();
    fetchPremiereTable(BoxConstraints());
  }

  Future<void> fetchPremiereTable(BoxConstraints constraints) async {
    const url =
        "https://fakestoreapi.com/products" ;
;
    try {
      isLoading.value = true;

      final response = await http.get(Uri.parse(url));
      print("status code: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List standingData = data['table'];

        standings.assignAll(
          standingData.map((e) => ProdakModel.fromJson(e)).toList(),
        );

        print("Jumlah tim: ${standings.length}");
        if (standings.isNotEmpty) {
          print("Tim pertama: ${standings.first.title}");
        }
      } else {
        print("Gagal memuat data: ${response.statusCode}");
      }
    } catch (e) {
      print("Error saat ambil data: $e");
    } finally {
    
      isLoading.value = false;
    }
  }

  void updateLayout(BoxConstraints constraints) {}
}

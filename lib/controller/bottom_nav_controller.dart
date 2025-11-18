
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pas_mobile_11pplg1_10/pages/history_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/prodak_page.dart';
import 'package:pas_mobile_11pplg1_10/pages/profile_page.dart';



class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    ProdakPage(),
    HistoryPage(),
    ProfilePage(),
  ];
  final List<String> title= [
    'TodolistMobilePage',
    'HistoryPageMobile',
    'ProfileMobilePage',
  ];
  

  var isMobile = true.obs;


  void updateLayout(BoxConstraints constraints){
  isMobile.value = constraints.maxWidth < 600;
}

  void changePage(int index) {
    currentIndex.value = index;
  }
}

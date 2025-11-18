import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controller/prodak_controller.dart';


class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  final ProdakController controlller = Get.put(ProdakController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: LayoutBuilder(
        builder: (context, constraints) {
          controlller.updateLayout(constraints); //Detection width screen
          //transforming load page
         return Obx(() {
            if (controlller.isMobile.value) {
              return HistoryPage();
            }

            // Desktop / wide layout: NavigationRail + content
            return Row(
              children: [
                NavigationRail(
                  selectedIndex: controlller.currentIndex.value,
                  onDestinationSelected: controlller.changePage,
                  labelType: NavigationRailLabelType.selected,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.history),
                      label: Text('History'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text('Profile'),
                    ),
                  ],
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(
                  child: Obx(
                    () => controlller.pages[controlller.currentIndex.value],
                  ),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}

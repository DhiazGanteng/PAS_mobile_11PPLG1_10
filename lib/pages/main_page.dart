import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_10/controller/auth_controller.dart';
import 'package:pas_mobile_11pplg1_10/controller/bottom_nav_controller.dart';
import 'package:pas_mobile_11pplg1_10/pages/bottom_nav_page.dart';
import 'package:pas_mobile_11pplg1_10/routes/pages.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updateLayout(constraints); // Detection width screen
          return Obx(() {
            if (controller.isMobile.value) {
              return const BottomNavPage();
            }

            // Desktop / wide layout: NavigationRail + content
            return Row(
              children: [
                NavigationRail(
                  selectedIndex: controller.currentIndex.value,
                  onDestinationSelected: controller.changePage,
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
                    () => controller.pages[controller.currentIndex.value],
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

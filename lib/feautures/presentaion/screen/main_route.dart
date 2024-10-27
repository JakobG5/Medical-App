import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/utils/constants/colors.dart';

import '../controller/main_route_controller.dart';

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainRouteController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeScreen,
          selectedItemColor: MColors.primaryColor1,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital_sharp), label: 'Doctors'),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: 'Appointment'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

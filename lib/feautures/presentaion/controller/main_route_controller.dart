import 'package:get/get.dart';
import 'package:medical_app/feautures/presentaion/screen/appointment.dart';
import 'package:medical_app/feautures/presentaion/screen/doctors_screen.dart';
import 'package:medical_app/feautures/presentaion/screen/home_screen.dart';
import 'package:medical_app/feautures/presentaion/screen/profile_screen.dart';

class MainRouteController extends GetxController {
  static MainRouteController get instance => Get.find();

  List screens = const [
    HomeScreen(),
    DoctorsScreen(),
    Appointment(),
    ProfileScreen(),
  ];
  RxInt selectedIndex = 0.obs;

  void changeScreen(int index) {
    selectedIndex.value = index;
  }
}

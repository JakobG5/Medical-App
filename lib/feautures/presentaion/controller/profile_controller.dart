import 'package:get/get.dart';
import 'package:medical_app/feautures/presentaion/screen/edit_profile_screen.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  void goToEditProifleScreen() {
    Get.to(const EditProfileScreen());
  }
}

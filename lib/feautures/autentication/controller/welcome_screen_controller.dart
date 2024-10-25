import 'package:get/get.dart';
import 'package:medical_app/feautures/autentication/screens/login_screen.dart';
import 'package:medical_app/feautures/autentication/screens/signin_screen.dart';

class WelcomeScreenController extends GetxController {
  static WelcomeScreenController get instance => Get.find();

  void goToLogInScreen() {
    Get.to(const LoginScreen());
  }

  void goToSignInScreen() {
    Get.to(const SigninScreen());
  }
}

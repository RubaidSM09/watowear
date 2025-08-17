import 'package:get/get.dart';

import 'package:watowear_chole/app/modules/sign_in/controllers/forgot_password_controller.dart';
import 'package:watowear_chole/app/modules/sign_in/controllers/new_password_controller.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(
      () => NewPasswordController(),
    );
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
  }
}

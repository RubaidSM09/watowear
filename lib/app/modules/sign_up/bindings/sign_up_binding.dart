import 'package:get/get.dart';

import 'package:watowear_chole/app/modules/sign_up/controllers/extras_controller.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/terms_condition_controller.dart';
import 'package:watowear_chole/app/modules/sign_up/controllers/verify_mail_controller.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsConditionController>(
      () => TermsConditionController(),
    );
    Get.lazyPut<ExtrasController>(
      () => ExtrasController(),
    );
    Get.lazyPut<VerifyMailController>(
      () => VerifyMailController(),
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}

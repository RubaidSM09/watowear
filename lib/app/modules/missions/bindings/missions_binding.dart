import 'package:get/get.dart';

import 'package:watowear_chole/app/modules/missions/controllers/reward_achievements_controller.dart';

import '../controllers/missions_controller.dart';

class MissionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RewardAchievementsController>(
      () => RewardAchievementsController(),
    );
    Get.lazyPut<MissionsController>(
      () => MissionsController(),
    );
  }
}

import 'package:get/get.dart';

class RewardAchievementsController extends GetxController {
  RxList<RxBool> selectedBadgeType = [true.obs, false.obs, false.obs].obs;

  final count = 0.obs;



  void increment() => count.value++;
}

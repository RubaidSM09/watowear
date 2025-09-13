import 'package:get/get.dart';

class ClosetController extends GetxController {
  RxBool isGrid = true.obs;
  RxList<RxBool> selectedFitler = [true.obs, false.obs, false.obs, false.obs, false.obs,].obs;
}

import 'package:get/get.dart';

class ProfileController extends GetxController {
  final heightUnit = 'Ft'.obs;
  final heightUnits = const ['Ft', 'In', 'Cm'];
  final weightUnit = 'Kg'.obs;
  final weightUnits = const ['Kg', 'lbs'];

  void setHeightUnit(String? v) {
    if (v != null) heightUnit.value = v;
  }

  void setWeightUnit(String? v) {
    if (v != null) weightUnit.value = v;
  }
}

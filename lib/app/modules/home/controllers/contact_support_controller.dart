import 'package:get/get.dart';

class ContactSupportController extends GetxController {
  final RxnString selectedTopic = RxnString();

  final List<String> topics = const [
    'Technology',
    'Education',
    'Sports',
    'Health',
    'Business',
  ];

  void setTopic(String? value) => selectedTopic.value = value;
}

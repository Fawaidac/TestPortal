import 'package:get/get.dart';

class SecondController extends GetxController {
  var name = ''.obs;
  var selectedUser = ''.obs;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>;
    if (arguments != null && arguments['name'] != null) {
      name.value = arguments['name'];
    }
  }
}

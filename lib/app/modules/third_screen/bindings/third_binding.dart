import 'package:get/get.dart';

import '../controllers/third_controller.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThirdController>(
      () => ThirdController(),
    );
  }
}

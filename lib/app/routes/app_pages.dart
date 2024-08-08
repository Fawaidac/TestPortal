import 'package:get/get.dart';

import '../modules/first_screen/bindings/first_binding.dart';
import '../modules/first_screen/views/first_view.dart';
import '../modules/second_screen/bindings/second_binding.dart';
import '../modules/second_screen/views/second_view.dart';
import '../modules/third_screen/bindings/third_binding.dart';
import '../modules/third_screen/views/third_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST;

  static final routes = [
    GetPage(
      name: _Paths.FIRST,
      page: () => FirstView(),
      binding: FirstBinding(),
    ),
    GetPage(
      name: _Paths.SECOND,
      page: () => const SecondView(),
      binding: SecondBinding(),
    ),
    GetPage(
      name: _Paths.THIRD,
      page: () => const ThirdView(),
      binding: ThirdBinding(),
    ),
  ];
}

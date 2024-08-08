import 'package:get/get.dart';

import '../modules/first_screen/bindings/first_binding.dart';
import '../modules/first_screen/views/first_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST;

  static final routes = [
    GetPage(
      name: _Paths.FIRST,
      page: () => const FirstView(),
      binding: FirstBinding(),
    ),
  ];
}

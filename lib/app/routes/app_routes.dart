part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const FIRST = _Paths.FIRST;
  static const SECOND = _Paths.SECOND;
  static const THIRD = _Paths.THIRD;
}

abstract class _Paths {
  _Paths._();
  static const FIRST = '/first';
  static const SECOND = '/second';
  static const THIRD = '/third';
}

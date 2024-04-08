// ignore_for_file: constant_identifier_names
part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const CHAT = _Paths.CHAT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LOGIN = '/login';
  static const CHAT = '/chat';
}

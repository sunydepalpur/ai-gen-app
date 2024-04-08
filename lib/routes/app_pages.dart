import 'package:ai_gen/modules/chat/bindings/chat_page_binding.dart';
import 'package:ai_gen/modules/chat/view/chat-page.dart';
import 'package:ai_gen/modules/home/bindings/home_page_binding.dart';
import 'package:ai_gen/modules/home/view/home-page.dart';
import 'package:ai_gen/modules/login/bindings/login_page_binding.dart';
import 'package:ai_gen/modules/login/view/login-page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatPageView(),
      binding: ChatPageBinding(),
    ),
  ];
}

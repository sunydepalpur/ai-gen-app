import 'package:ai_gen/modules/login/bindings/login_page_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/login/view/login-page.dart';
import 'routes/app_pages.dart';
import 'theme/thema.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI GEN',
      fallbackLocale: const Locale('en', 'US'),
      theme: CustomTheme().darkTheme(),
      home: LoginPageView(),
      getPages: AppPages.routes,
    ),
  );
}

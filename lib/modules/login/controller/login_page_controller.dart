import 'package:ai_gen/core/appconfig.dart';
import 'package:ai_gen/core/utils/global_snackbar.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:uuid/uuid.dart';

class LoginPageController extends GetxController {
  final dio = Dio();
  bool retry = false;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> authenticateUser() async {
    var platform = Platform.isAndroid ? "android" : "ios";
    var platformId = Uuid().v4();

    print("object");

    try {
      final response = await dio.post('${AppConfig.appEndpoint}/auth/login',
          data: {"deviceId": platformId, "devicePlatform": platform});
      if (response.statusCode == 200) {
        AppConfig.accessToken = response.data['accessToken'];
      }
      print(response);
      GlobalSnackbar.getSuccessSnackbar('Success');
      Get.toNamed('/home');
    } catch (e) {
      print(e.toString());
      GlobalSnackbar.getErrorSnackbar(
          'Login/Sign Up Failed, please try again.');
      retry = true;
    }
  }
}

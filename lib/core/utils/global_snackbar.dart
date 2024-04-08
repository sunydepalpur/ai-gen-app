export 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalSnackbar {
  static getErrorSnackbar(String content) {
    return Get.snackbar(
      'AI Gen ',
      '',
      messageText: Text(
        content,
        style: const TextStyle(color: Colors.white),
      ),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
    );
  }

  static getSuccessSnackbar(String content) {
    return Get.snackbar(
      'AI Gen ',
      '',
      messageText: Text(
        content,
        style: const TextStyle(color: Colors.white),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }

  static getInfoSnackbar(String content) {
    return Get.snackbar(
      'AI Gen ',
      '',
      messageText: Text(
        content,
        style: const TextStyle(color: Colors.white),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: const Color.fromARGB(255, 214, 126, 19),
      colorText: Colors.white,
    );
  }
}

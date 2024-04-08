import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/chat_page_controller.dart';

class ChatPageView extends GetView<ChatPageController> {
  const ChatPageView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 24),
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/login_sale.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

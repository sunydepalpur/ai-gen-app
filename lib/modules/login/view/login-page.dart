import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_page_controller.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  LoginPageController? controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(LoginPageController());
    WidgetsBinding.instance
        .addPostFrameCallback((_) => controller?.authenticateUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20),
          Text("Loading ...")
        ],
      ),
    );
  }
}

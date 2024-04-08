import 'package:ai_gen/modules/home/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView();

  getButtonWidget(context, controller, primaryType, imageName) {
    return Container(
        width: (Get.width / 3) - 30,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color:
                    primaryType ? Theme.of(context).primaryColor : Colors.grey,
                width: 3)),
        child: GestureDetector(
          onTap: () {
            controller.boy = !controller.boy;
            controller.girl = false;
            controller.non_binary = false;
          },
          child: CircleAvatar(
            radius: 16.0,
            child: ClipRRect(
              child: Image.asset(
                'assets/images/${imageName}.png',
                height: 100,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 24),
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  getButtonWidget(context, controller, controller.boy, "boy"),
                  getButtonWidget(context, controller, controller.girl, "girl"),
                  getButtonWidget(
                      context, controller, controller.non_binary, "robot"),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: SizedBox(
                    height: 50,
                    width: Get.width,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text("Start"),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor)),
                    )),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liftoff/app/modules/home/presentation/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          controller.obx(
            (data) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${data?[0].name}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

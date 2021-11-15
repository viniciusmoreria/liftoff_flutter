import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liftoff/app/modules/home/presentation/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text('Next launch:'),
                  ),
                  Text(controller.nextLaunch.value.name ?? 'Loading'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, bottom: 12),
              child: Text(
                'Upcomings launches:',
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.launches.length,
                  itemBuilder: (context, index) {
                    final item = controller.launches[index];

                    return Text('${item.name}');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

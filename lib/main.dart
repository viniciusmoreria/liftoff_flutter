import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liftoff/app/routes/app_pages.dart';

import 'app/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    );
  }
}

import 'package:get/get.dart';
import 'package:liftoff/app/modules/home/bindings/home_binding.dart';
import 'package:liftoff/app/modules/home/presentation/views/home_view.dart';
import 'package:liftoff/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => const HomeView(), binding: HomeBinding())
  ];
}

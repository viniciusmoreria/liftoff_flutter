import 'package:get/get.dart';
import 'package:liftoff/app/core/utils/logger.dart';
import 'package:liftoff/app/modules/home/domain/adapters/repository_adapter.dart';
import 'package:liftoff/app/modules/home/domain/entity/launch_model.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});

  final IHomeRepository homeRepository;

  RxList<LaunchModel> upcomingLaunches = <LaunchModel>[].obs;
  Rx<LaunchModel> nextLaunch = LaunchModel().obs;

  @override
  void onInit() async {
    nextLaunch.value = await homeRepository.getNextLaunch();
    upcomingLaunches.value = await homeRepository.getUpcomingLaunches();

    super.onInit();
  }

  @override
  void onReady() {
    Logger.d('The build method is done. '
        'Your controller is ready to call dialogs and snackbars');
    super.onReady();
  }

  @override
  void onClose() {
    Logger.d('onClose called');
    super.onClose();
  }
}

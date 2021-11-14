import 'package:get/get.dart';
import 'package:liftoff/app/core/utils/logger.dart';
import 'package:liftoff/app/modules/home/domain/adapters/repository_adapter.dart';
import 'package:liftoff/app/modules/home/domain/entity/launch_model.dart';

class HomeController extends SuperController<List<LaunchModel>> {
  HomeController({required this.homeRepository});

  final IHomeRepository homeRepository;

  @override
  void onInit() {
    super.onInit();

    append(() => homeRepository.getLaunches);
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

  @override
  Future<bool> didPushRoute(String route) {
    Logger.d('the route $route will be open');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    Logger.d('the current route will be closed');
    return super.didPopRoute();
  }

  @override
  void onDetached() {
    Logger.d('onDetached called');
  }

  @override
  void onInactive() {
    Logger.d('onInactive called');
  }

  @override
  void onPaused() {
    Logger.d('onPaused called');
  }

  @override
  void onResumed() {
    Logger.d('onResumed called');
  }
}

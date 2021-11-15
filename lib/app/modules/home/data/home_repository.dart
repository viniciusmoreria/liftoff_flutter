import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/launch_model.dart';

import 'home_api_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  @override
  Future<List<LaunchModel>> getUpcomingLaunches() async {
    final response = await provider.getUpcomingLaunches('/launches/upcoming');
    if (response.hasError) {
      return Future.error(response.statusText!);
    } else {
      Iterable jsonResponse = response.body!;
      List<LaunchModel> launchesList =
          jsonResponse.map((launch) => LaunchModel.fromJson(launch)).toList();

      return launchesList..removeAt(0);
    }
  }

  @override
  Future<LaunchModel> getNextLaunch() async {
    final response = await provider.getNextLaunch('/launches/next');
    if (response.hasError) {
      return Future.error(response.statusText!);
    } else {
      LaunchModel nextLaunch = LaunchModel.fromJson(response.body!);

      return nextLaunch;
    }
  }
}

import '../entity/launch_model.dart';

abstract class IHomeRepository {
  Future<List<LaunchModel>> getUpcomingLaunches();
  Future<LaunchModel> getNextLaunch();
}

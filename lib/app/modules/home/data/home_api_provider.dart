import 'package:get/get.dart';
import 'package:liftoff/app/core/utils/constants.dart';

abstract class IHomeProvider {
  Future<Response<List<dynamic>>> getLaunches(String path);
}

class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    httpClient.baseUrl = baseURL;
  }

  @override
  Future<Response<List<dynamic>>> getLaunches(String path) => get(path);
}

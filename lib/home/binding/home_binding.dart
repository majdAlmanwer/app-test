import 'package:app_test/home/controller/home_controller.dart';
import 'package:app_test/home/repo/home_repo.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(homeRepo: HomeRepo(httpClient: http.Client())));
  }
}

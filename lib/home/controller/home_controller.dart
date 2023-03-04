import 'package:app_test/home/repo/home_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepo homeRepo;
  var data;
  var category = [];
  var socialPlatforms = [];
  var languages = [];
  var locations = [];
  var jobs = [];
  HomeController({required this.homeRepo});

  getHomeMethod() async {
    try {
      var resData = await homeRepo.getHome();
      category = resData['categories'];
      socialPlatforms = resData['socialPlatforms'];
      languages = resData['languages'];
      locations = resData['locations'];
      jobs = resData['jobs']['data'];
      print(jobs);
      update();
    } catch (e) {
      print(e);
    }
  }
}

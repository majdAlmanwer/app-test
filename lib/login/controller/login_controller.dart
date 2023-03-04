import 'package:app_test/home/binding/home_binding.dart';
import 'package:app_test/home/view/home_screen.dart';
import 'package:app_test/login/repo/login_repo.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginRepo loginRepo;
  String email = '';
  dynamic password;
  var data;
  String token = '';
  LoginController({
    required this.loginRepo,
  });

  login(String email, dynamic password) async {
    var res = await loginRepo.login(email, password);
    token = res['token'];
    print("mmmmmmmmmmmmmmmmmmmmmmmm${token}");
    Get.to(() => HomeScreen(), binding: HomeBinding());
  }
}

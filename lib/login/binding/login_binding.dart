import 'dart:io';

import 'package:app_test/login/controller/login_controller.dart';
import 'package:app_test/login/repo/login_repo.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(loginRepo: LoginRepo(httpClint: http.Client())));
  }
}

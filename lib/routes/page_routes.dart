import 'package:app_test/login/binding/login_binding.dart';
import 'package:app_test/login/view/login_screen.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => LoginScreen(),
        binding: LoginBinding()),
    // GetPage(
    //     name: Routes.DETAILS,
    //     page: () => DetailsPage(),
    //     binding: DetailsBinding()),
  ];
}

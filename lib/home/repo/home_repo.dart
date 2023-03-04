import 'dart:convert';

import 'package:app_test/login/controller/login_controller.dart';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;

const baseUrl = 'https://new.instafluencer.com/api/v1/home';
LoginController loginController = Get.find();

class HomeRepo {
  final http.Client httpClient;
  var data = {};
  var token = loginController.token;
  var category = {};
  HomeRepo({required this.httpClient});

  Future<dynamic> getHome() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl), headers: {
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        data = jsonDecode(response.body.toString());
        data = data['data'];
        print('homeeeeeeeeeeeeeeeeeeeee${data}');
        print(' successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
    return data;
  }
}

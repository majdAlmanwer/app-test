import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

const baseUrl = 'https://new.instafluencer.com/api/v1/users/auth/login';

class LoginRepo {
  final http.Client httpClint;
  var data;
  String token = '';

  LoginRepo({required this.httpClint});

  Future<dynamic> login(String email, password) async {
    try {
      Response response = await httpClint.post(Uri.parse(baseUrl),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        data = jsonDecode(response.body.toString());
        print('llllllllllllllllllllllllllllllll${data}');
        token = data['data']['token'];
        data = data['data'];
        print('lolololol0oloollllllll${data}');
        print(token);
        print('Login successfully');
      } else {
        print('failed');
      }
      return data;
    } catch (e) {
      print(e.toString());
    }
  }
}

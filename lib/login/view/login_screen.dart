import 'package:app_test/login/binding/login_binding.dart';
import 'package:app_test/login/controller/login_controller.dart';
import 'package:app_test/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08),
              child: Image.asset('assets/social.png'),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 10, bottom: MediaQuery.of(context).size.height * 0.03),
              alignment: Alignment.topLeft,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Sign in',
                      style: TextStyle(
                          color: Color(0xff103350),
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Login to use the platform.',
                      style: TextStyle(
                          color: Color(0xffA3A3A3),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Username or email',
                          hintStyle: TextStyle(color: Color(0x4D3C3C43))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      obscureText: !_showPassword,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Color(0x4D3C3C43)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword == false
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                value: true,
                                activeColor: Colors.blue,
                                onChanged: (value) {},
                              ),
                              Text(
                                'Keep me logged in',
                                style: TextStyle(
                                    color: Color(0x803C3C43),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Color(0x803C3C43),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GetBuilder<LoginController>(
                    initState: (state) {
                      LoginBinding().dependencies();
                    },
                    builder: (_) => Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff2476B7))),
                        onPressed: () {
                          _.login(_.email = emailController.text,
                              _.password = passwordController.text);
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:app_test/home/controller/home_controller.dart';
import 'package:app_test/home/view/components/categories.dart';
import 'package:app_test/home/view/components/home_body_list.dart';
import 'package:app_test/home/view/components/search_bar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tab = 0;
  // void initstate() {
  //   HomeController homeController = Get.find();
  //   super.initState();
  // }
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white10,
        // backgroundColor: Color(0xFFF5F5F5),
        bottomOpacity: 0,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Welcome!',
            style: TextStyle(
              color: Color(0xff103350),
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [Icon(Icons.menu)],
        actionsIconTheme: IconThemeData(color: Color(0xff103350), size: 30),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: Column(children: [
        CategoryWidget(),
        SearchBarWidget(),
        Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: SingleChildScrollView(child: HomeBodyList())),
      ]),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Color(0xffF5F5F9),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff2476B7), width: 5),
              borderRadius: BorderRadius.circular(35)),
          onPressed: () {
            homeController.getHomeMethod();
          },
          child: Icon(
            Icons.add,
            size: 50,
            color: Color(0xff2476B7),
            weight: 15,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Color(0xff2476B7),
        borderRadius: 40,
        padding: EdgeInsets.all(15),
        itemBorderRadius: 35,
        iconSize: 30,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
        selectedBackgroundColor: Color(0xffF5F5F9),
        selectedItemColor: Color(0xff2476B7),
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          FloatingNavbarItem(
              icon: Icons.notification_add_outlined, title: 'Notifications'),
          FloatingNavbarItem(icon: Icons.business_center, title: 'Jobs'),
          FloatingNavbarItem(
              icon: Icons.chat_bubble_outline_rounded, title: 'Chats'),
        ],
      ),
    );
  }
}

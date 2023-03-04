import 'package:app_test/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});
  // HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemExtent: 65,
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child:
                  // ClipOval(
                  //     child: Image.network(
                  //   _.category[index]['icon'].toString(),
                  //   fit: BoxFit.cover,
                  //   width: 90.0,
                  //   height: 90.0,
                  // )),
                  CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.settings,
                  color: Colors.black12,
                ),
              ),
            );
          }),
    );
  }
}

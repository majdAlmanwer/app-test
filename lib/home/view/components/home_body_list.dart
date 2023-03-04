import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'package:app_test/home/controller/home_controller.dart';

class HomeBodyList extends StatelessWidget {
  HomeBodyList({super.key});
  HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      initState: (state) {
        homeController.getHomeMethod();
      },
      builder: (_) => ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[600],
            indent: MediaQuery.of(context).size.width * 0.07,
            endIndent: MediaQuery.of(context).size.width * 0.07,
          );
        },
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: homeController.jobs.length,
        itemBuilder: (ctx, index) => Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0.0, 0.75))
                          ],
                          border: Border.all(color: Colors.grey.shade400),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.abc),
                    ),
                    Container(
                      height: 20,
                      child: Text(_.jobs[index]['slug'].toString()),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Languages:',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          ListTile(
                            leading: Text('EN'),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_circle_right_outlined)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,

                // padding: EdgeInsets.all(4),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      // margin: EdgeInsets.all(3),
                      // width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              child: AutoSizeText(
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                '${_.jobs[index]['job_title']}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Flexible(
                            child: Container(
                                padding: EdgeInsets.all(3),
                                child: Icon(
                                  Icons.settings,
                                  size: 20,
                                )),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            padding: EdgeInsets.all(3),
                            // height: 80,

                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.local_offer,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                AutoSizeText(
                                  '10000 AED',
                                  overflow: TextOverflow.ellipsis,
                                  maxFontSize: 10,
                                  minFontSize: 8,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      // margin: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.08,

                      child: AutoSizeText(
                          softWrap: true,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          maxFontSize: 18,
                          minFontSize: 10,
                          'easiest way to make money from your content and followersLorem ipsum lorem ipsum lorem ipsum lorem ipsum.'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        size: 18,
                                      ),
                                      AutoSizeText(
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        'Expiry date',
                                        minFontSize: 10,
                                        maxFontSize: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: AutoSizeText(
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    '3/3/2023',
                                    minFontSize: 10,
                                    maxFontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: AutoSizeText(
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    'Proposals',
                                    minFontSize: 10,
                                    maxFontSize: 12,
                                  ),
                                ),
                                Flexible(
                                  child: AutoSizeText(
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    '0',
                                    minFontSize: 10,
                                    maxFontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                      ),
                                      AutoSizeText(
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        'Location',
                                        minFontSize: 10,
                                        maxFontSize: 12,
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: AutoSizeText(
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    'Dubai',
                                    minFontSize: 10,
                                    maxFontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: AutoSizeText(
                                        'Social media tags',
                                        maxLines: 1,
                                      ),
                                    ),
                                    Icon(Icons.facebook),
                                    Icon(Icons.dataset_linked_outlined),
                                    Icon(Icons.telegram),
                                    Icon(Icons.flutter_dash),
                                  ]),
                            )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border))
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

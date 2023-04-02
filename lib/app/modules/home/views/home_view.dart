import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/home_controller.dart';
import 'body_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BodyView());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  // Container(
                  //   width: double.infinity,
                  //   child: Text(
                  //     "Member Exsekutif",
                  //     style: TextStyle(
                  //       fontSize: 24,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                FontAwesomeIcons.coins,
                                color: Color(0xFFFFD900),
                                size: 26.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Coins",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                "1000",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                FontAwesomeIcons.stamp,
                                color: Color(0xFF009000),
                                size: 26.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Stamp",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "3000",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                FontAwesomeIcons.percent,
                                color: Color(0xFFFF0000),
                                size: 26.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Voucher",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

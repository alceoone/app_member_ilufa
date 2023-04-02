import 'package:app_ex/app/modules/Reward/views/reward_view.dart';
import 'package:app_ex/app/modules/Stamp/views/stamp_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Coin/views/coin_view.dart';

class CardMenuPointStamp extends StatelessWidget {
  const CardMenuPointStamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    // print("Container clicked");
                    Get.to(const CoinView());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // height: 60,
                    // width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 60,
                      minWidth: double.infinity,
                      // maxHeight: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Wrap(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Icon(
                                    FontAwesomeIcons.coins,
                                    color: Color(0xFFFFD900),
                                    size: 26.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Point",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "1.000.000",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.grey[400],
                            size: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    // print("Container clicked");
                    Get.to(const StampView());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // height: 60,
                    // width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 60,
                      minWidth: double.infinity,
                      // maxHeight: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Wrap(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Icon(
                                    FontAwesomeIcons.stamp,
                                    color: Color(0xFF009000),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Stamp",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.grey[400],
                            size: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    // print("Container clicked");
                    Get.to(const RewardView());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // height: 60,
                    // width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 60,
                      minWidth: double.infinity,
                      // maxHeight: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Icon(
                                    FontAwesomeIcons.award,
                                    color: Colors.blue,
                                    size: 26.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Reward",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    // Text(
                                    //   "1000",
                                    //   style: TextStyle(fontSize: 12),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.grey[400],
                            size: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  onTap: () {
                    // print("Container clicked");
                    Get.to(const StampView());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // height: 60,
                    // height: min,
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 60,
                      minWidth: double.infinity,
                      // maxHeight: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Icon(
                                    FontAwesomeIcons.tags,
                                    color: Colors.red,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Promo",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  // Text(
                                  //   "3",
                                  //   style: TextStyle(fontSize: 16),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.grey[400],
                            size: 16.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

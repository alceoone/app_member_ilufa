import 'package:app_ex/app/modules/Coin/views/coin_view.dart';
import 'package:app_ex/app/modules/MemberArea/views/member_area_view.dart';
import 'package:app_ex/app/modules/Stamp/views/stamp_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPointView extends GetView {
  const CardPointView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          // height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1), // changes position of shadow
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
                    GestureDetector(
                      onTap: () {
                        // print("Container clicked");
                        Get.to(const CoinView());
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                FontAwesomeIcons.coins,
                                color: Color(0xFFFFD900),
                                size: 24.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Point",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "1000",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // print("Container clicked");
                        Get.to(const StampView());
                      },
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Icon(
                                FontAwesomeIcons.stamp,
                                color: Color(0xFF009000),
                                size: 24.0,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Stamp",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
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
                    // GestureDetector(
                    //   onTap: () {
                    //     // print("Container clicked");
                    //     Get.to(const MemberAreaView());
                    //   },
                    //   child: Row(
                    //     children: [
                    //       Container(
                    //         child: Padding(
                    //           padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    //           child: Icon(
                    //             FontAwesomeIcons.idCard,
                    //             color: Color(0xFFFF0000),
                    //             size: 24.0,
                    //           ),
                    //         ),
                    //       ),
                    //       Column(
                    //         children: [
                    //           Text(
                    //             "Member",
                    //             style: TextStyle(
                    //               fontSize: 12,
                    //             ),
                    //           ),
                    //           Text(
                    //             "Area",
                    //             style: TextStyle(
                    //               fontSize: 12,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

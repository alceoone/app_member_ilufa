import 'package:app_ex/app/modules/Reward/views/reward_view.dart';
import 'package:app_ex/app/modules/Store/views/store_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuHomeView extends GetView {
  const MenuHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      // height: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // print("Container clicked");
                  Get.to(const RewardView());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  //               height: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.award,
                        color: Colors.green,
                        size: 24.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Reward",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("Container clicked");
                  Get.to(const StoreView());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  //               height: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.store,
                        color: Colors.deepOrange,
                        size: 24.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Store",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("Container clicked");
                  Get.to(const StoreView());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  //               height: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.calendarDay,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Event Store",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("Container clicked");
                  Get.to(const StoreView());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  //               height: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.tag,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Promo",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width * 0.18,
              //   //               height: MediaQuery.of(context).size.width * 0.2,
              //   child: Column(
              //     children: [
              //       Icon(
              //         FontAwesomeIcons.list,
              //         color: Colors.red,
              //         size: 24.0,
              //       ),
              //       SizedBox(height: 10),
              //       Text(
              //         "Lihat Semua",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(fontSize: 12.0),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ]),
      ),
    );
  }
}

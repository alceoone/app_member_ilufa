import 'package:app_ex/app/modules/Login/views/login_view.dart';
import 'package:app_ex/app/modules/Reward/bindings/reward_binding.dart';
import 'package:app_ex/app/modules/home/views/home_view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Reward/views/reward_view.dart';
import '../../dashboard/bindings/dashboard_binding.dart';
import '../../dashboard/views/dashboard_view.dart';

class AkunMenuView extends StatelessWidget {
  const AkunMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // print("Container clicked");
              Get.to(const RewardView());
            },
            child: Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.award,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Reward",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.store,
                    color: Colors.grey[700],
                    size: 18.0,
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Store",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey[700],
                      size: 18.0,
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.arrowsRotate,
                    color: Colors.grey[700],
                    size: 18.0,
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Riwayat",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey[700],
                      size: 18.0,
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.circleQuestion,
                    color: Colors.grey[700],
                    size: 18.0,
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "FAQ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey[700],
                      size: 18.0,
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.grey[700],
                    size: 18.0,
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Hubungi Kami",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey[700],
                      size: 18.0,
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            height: 30,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.fileContract,
                    color: Colors.grey[700],
                    size: 18.0,
                  ),
                ),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Kebijakan Privasi",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700]),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.grey[700],
                      size: 18.0,
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              // print("Container clicked");
              Get.off(const LoginView());
            },
            child: Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.reply,
                      color: Colors.red,
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 9,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Keluar",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.red),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

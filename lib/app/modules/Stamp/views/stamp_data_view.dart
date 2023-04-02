import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class StampDataView extends StatelessWidget {
  const StampDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),
        //     bottomLeft: Radius.circular(10),
        //     bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.stamp,
                    color: Color(0xFF009000),
                    size: 28.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: "3",
                        style: TextStyle(color: Colors.grey[700], fontSize: 26),
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = () {
                            //     Get.to(SignUpView());
                            //   },
                            text: " stamp",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    // child: Text(
                    //   "200",
                    //   style: TextStyle(fontSize: 24, color: Colors.white),
                    // ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 35,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Get.off(DashboardView(), binding: DashboardBinding());
                    // Get.to(ExchangeCoin());
                  },
                  child: const Text(
                    'Tukar Stamp Sekarang',
                    style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                  ),
                ),
              ),
              // Text(
              //   "Tukar Point Sekarang",
              //   style: TextStyle(fontSize: 18, color: Colors.white),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

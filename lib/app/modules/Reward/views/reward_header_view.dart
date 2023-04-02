import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardHeaderView extends StatelessWidget {
  const RewardHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Container(
        width: double.infinity,
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.coins,
                    color: Color(0xFFFFD900),
                    size: 28.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: "1000",
                        style:
                            TextStyle(color: Color(0xFFFFD900), fontSize: 26),
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = () {
                            //     Get.to(SignUpView());
                            //   },
                            text: " Point tersedia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    // child: Text(
                    //   "200",
                    //   style: TextStyle(fontSize: 24, color: Colors.white),
                    // ),
                  ),
                  Expanded(flex: 5, child: Container()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

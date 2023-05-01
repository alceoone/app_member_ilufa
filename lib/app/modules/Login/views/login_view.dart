import 'package:app_ex/app/modules/SignUp/views/sign_up_view.dart';
import 'package:app_ex/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:app_ex/app/modules/dashboard/views/dashboard_view.dart';
import 'package:app_ex/app/modules/home/views/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(height: 30),
              const Text(
                "Masuk",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              ),
              SizedBox(height: 20),
              Text(
                "Email / No.Telp",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Email / No.Telp',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.person,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.12,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),

                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              // SizedBox(height: 30),
              // Row(
              //   children: [
              //     Checkbox(
              //       value: false != true,
              //       onChanged: (value) {},
              //     ),
              //     Expanded(
              //       child: RichText(
              //         // ignore: prefer_const_constructors
              //         text: TextSpan(
              //           text: "Saya menyetujui ",
              //           style: TextStyle(color: Colors.grey),
              //           // ignore: prefer_const_literals_to_create_immutables
              //           children: [
              //             TextSpan(
              //                 recognizer: TapGestureRecognizer()
              //                   ..onTap = () {
              //                     print("Syarat Tap");
              //                   },
              //                 text: "Syarat",
              //                 style: TextStyle(color: Colors.red),
              //                 children: [
              //                   TextSpan(
              //                       text: ", ",
              //                       style: TextStyle(color: Colors.grey)),
              //                 ]),
              //             TextSpan(
              //                 recognizer: TapGestureRecognizer()
              //                   ..onTap = () {
              //                     print("Ketentuan Tap");
              //                   },
              //                 text: "Ketentuan",
              //                 style: TextStyle(color: Colors.red),
              //                 children: [
              //                   TextSpan(
              //                       text: ", dan ",
              //                       style: TextStyle(color: Colors.grey)),
              //                 ]),
              //             TextSpan(
              //                 recognizer: TapGestureRecognizer()
              //                   ..onTap = () {
              //                     print("Privasi Tap");
              //                   },
              //                 text: "Privasi",
              //                 style: TextStyle(color: Colors.red),
              //                 children: [
              //                   TextSpan(
              //                       text: " iLuFA 168.",
              //                       style: TextStyle(color: Colors.grey)),
              //                 ]),
              //           ],
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  child: Text(
                    "Lupa Password",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.red),
                  )),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrangeAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Get.off(DashboardView(), binding: DashboardBinding());
                    // Get.to(DashboardView());
                  },
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: RichText(
                  // ignore: prefer_const_constructors
                  text: TextSpan(
                    text: "Belum Punya Akun? ",
                    style: TextStyle(color: Colors.grey[700]),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(SignUpView());
                          },
                        text: "Daftar Sekarang",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

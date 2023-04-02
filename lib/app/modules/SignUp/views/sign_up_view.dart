import 'package:app_ex/app/modules/Login/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
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
                "Daftar",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent),
              ),
              SizedBox(height: 10),
              Text(
                "Username",
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Email",
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10),
              Text(
                "No.Telp",
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'No.Telp',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.password,
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Referal",
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: 'Referal',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    // prefixIcon: Icon(
                    //   Icons.password,
                    //   color: Colors.grey,
                    // ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: false != true,
                    onChanged: (value) {},
                  ),
                  Expanded(
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: "Saya menyetujui ",
                        style: TextStyle(color: Colors.black),
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Syarat Tap");
                                },
                              text: "Syarat",
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                    text: ", ",
                                    style: TextStyle(color: Colors.black)),
                              ]),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Ketentuan Tap");
                                },
                              text: "Ketentuan",
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                    text: ", dan ",
                                    style: TextStyle(color: Colors.black)),
                              ]),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Privasi Tap");
                                },
                              text: "Privasi",
                              style: TextStyle(color: Colors.red),
                              children: [
                                TextSpan(
                                    text: " iLuFA 168.",
                                    style: TextStyle(color: Colors.black)),
                              ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
                  onPressed: () {},
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: RichText(
                  // ignore: prefer_const_constructors
                  text: TextSpan(
                    text: "Sudah Punya Akun? ",
                    style: TextStyle(color: Colors.grey[700]),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginView());
                          },
                        text: "Masuk Sekarang",
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

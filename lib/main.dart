import 'package:app_ex/app/modules/History/views/riwayat/detail_faktur_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/sockets_io.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';
import 'app/widget/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   home: CheckAuth(),
    //   darkTheme: ThemeData(
    //       brightness: Brightness.dark, accentColor: Colors.blueAccent),
    //   themeMode: ThemeMode.dark,
    // );

    //  DetailFakturView();
    // return GetMaterialApp(
    //     title: "iLuFA 168",
    //     initialRoute: Routes.Q_R_CODE,
    //     getPages: AppPages.routes);

    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: "Application",
            initialRoute: Routes.LOGIN,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}

// class CheckAuth extends StatefulWidget {
//   @override
//   _CheckAuthState createState() => _CheckAuthState();
// }

// class _CheckAuthState extends State<CheckAuth> {
//   bool isAuth = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkIfLoggedIn();
//   }

//   void _checkIfLoggedIn() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     var token = localStorage.getString('token');
//     if (token != null) {
//       if (mounted) {
//         setState(() {
//           isAuth = true;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isAuth) {
//       return GetMaterialApp(
//         title: "Application",
//         initialRoute: Routes.DASHBOARD,
//         getPages: AppPages.routes,
//       );
//     } else {
//       return GetMaterialApp(
//         title: "Application",
//         initialRoute: Routes.LOGIN,
//         getPages: AppPages.routes,
//       );
//     }
//   }
// }

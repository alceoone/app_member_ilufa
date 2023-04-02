import 'package:app_ex/app/modules/History/views/riwayat/detail_faktur_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/sockets_io.dart';

import 'app/routes/app_pages.dart';
import 'app/widget/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  DetailFakturView();
    return GetMaterialApp(
        title: "iLuFA 168",
        initialRoute: Routes.Q_R_CODE,
        getPages: AppPages.routes);

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

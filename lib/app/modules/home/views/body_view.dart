import 'package:app_ex/app/modules/home/views/menu_home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'card_menu_point_stamp.dart';
import 'card_point_view.dart';
import 'card_promo2_view.dart';
import 'card_promo3_view.dart';
import 'card_promo_view.dart';
import 'header_view.dart';

class BodyView extends GetView {
  const BodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          HeaderView(),
          SizedBox(height: 10),
          CardPromoView(),
          SizedBox(height: 10),
          // CardPointView(),
          // SizedBox(height: 10),
          CardMenuPointStamp(),
          // MenuHomeView(),
          SizedBox(height: 10),
          CardPromo2View(),
          SizedBox(height: 10),
          CardPromo3View()
        ],
      ),
    ));
  }
}

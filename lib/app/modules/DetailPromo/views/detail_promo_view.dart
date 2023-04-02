import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_promo_controller.dart';

class DetailPromoView extends GetView<DetailPromoController> {
  const DetailPromoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
      ),
      body: Center(
        child: Text(
          'Detail Promo View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

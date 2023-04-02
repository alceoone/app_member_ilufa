import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vouchers_controller.dart';
import 'body_voucher_view.dart';

class VouchersView extends GetView<VouchersController> {
  const VouchersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vouchers'),
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
      ),
      body: BodyVoucherView(),
    );
  }
}

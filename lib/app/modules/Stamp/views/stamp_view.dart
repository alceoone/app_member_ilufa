import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/stamp_controller.dart';
import 'stamp_body.dart';

class StampView extends GetView<StampController> {
  const StampView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stamp'),
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
      ),
      body: StampBody(),
    );
  }
}

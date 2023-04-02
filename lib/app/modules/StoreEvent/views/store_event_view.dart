import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/store_event_controller.dart';

class StoreEventView extends GetView<StoreEventController> {
  const StoreEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StoreEventView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StoreEventView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

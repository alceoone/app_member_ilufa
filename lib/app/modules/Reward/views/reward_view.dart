import 'package:app_ex/app/modules/Reward/views/reward_body.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reward_controller.dart';

class RewardView extends GetView<RewardController> {
  const RewardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reward'),
          centerTitle: false,
          backgroundColor: Colors.deepOrange,
        ),
        body: RewardBodyView());
  }
}

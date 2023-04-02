import 'package:app_ex/app/modules/MemberArea/views/member_area_body.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/member_area_controller.dart';

class MemberAreaView extends GetView<MemberAreaController> {
  const MemberAreaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member'),
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
      ),
      body: MemberAreaBody(),
    );
  }
}

import 'package:app_ex/app/modules/History/views/point_stamp/body_point_stamp_view.dart';
import 'package:app_ex/app/modules/History/views/riwayat/body_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat'),
          backgroundColor: Colors.deepOrange,
          centerTitle: false,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Riwayat"),
              ),
              Tab(
                child: Text("Point & Stamp"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            BodyRiwayatView(),
            BodyPointStampView(),
          ],
        ),
      ),
    );
  }
}

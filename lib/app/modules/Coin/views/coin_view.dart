import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../controllers/coin_controller.dart';
import 'coin_body_view.dart';

class CoinView extends GetView<CoinController> {
  const CoinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Point iLuFA kamu'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.circleQuestion,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.shareNodes,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: CoinBody(),
    );
  }
}

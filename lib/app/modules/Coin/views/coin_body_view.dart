import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'coin_data_view.dart';
import 'coin_menu_tab.dart';

class CoinBody extends StatefulWidget {
  const CoinBody({super.key});

  @override
  State<CoinBody> createState() => _CoinBodyState();
}

class _CoinBodyState extends State<CoinBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CoinDataView(),
          SizedBox(height: 10),
          CoinMenuTab(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

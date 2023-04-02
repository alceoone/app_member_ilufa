import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'content_store.dart';

class StoreBodyView extends StatelessWidget {
  const StoreBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          ContentStoreView(),
        ],
      ),
    ));
  }
}

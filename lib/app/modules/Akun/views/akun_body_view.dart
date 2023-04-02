import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'akun_image_view.dart';
import 'akun_menu_view.dart';
import '';
class AkunBodyView extends StatelessWidget {
  const AkunBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AkunImageView(),
          AkunMenuView(),
        ],
      ),
    );
  }
}

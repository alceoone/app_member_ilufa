import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'header_member.dart';

class MemberAreaBody extends StatelessWidget {
  const MemberAreaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [HeaderMember()],
      ),
    ));
  }
}

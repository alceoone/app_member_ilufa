import 'package:app_ex/app/modules/Reward/views/reward_promo_internal.dart';
import 'package:app_ex/app/modules/Reward/views/reward_promo_patnership.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'reward_header_view.dart';

class RewardBodyView extends StatelessWidget {
  const RewardBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            RewardHeaderView(),
            RewardPromoInternalView(),
            RewardPromoPatnerShipView()
          ],
        ),
      ),
    );
  }
}

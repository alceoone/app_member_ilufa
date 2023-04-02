import 'package:app_ex/app/modules/Store/views/store_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Akun/views/akun_view.dart';
import '../../History/views/history_view.dart';
import '../../QRCode/views/q_r_code_view.dart';
import '../../Reward/views/reward_view.dart';
import '../../Vouchers/views/vouchers_view.dart';
import '../../home/views/home_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                // RewardView(),
                StoreView(),
                QRCodeView(),
                HistoryView(),
                AkunView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 5,
            items: [
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.house,
                label: 'Beranda',
              ),
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.shop,
                label: 'Toko',
              ),
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.qrcode,
                label: 'Barcode',
              ),
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.receipt,
                label: 'Riwayat',
              ),
              _bottomNavigationBarItem(
                icon: FontAwesomeIcons.user,
                label: 'Akun',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}

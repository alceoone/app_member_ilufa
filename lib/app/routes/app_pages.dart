import 'package:get/get.dart';

import '../modules/Akun/bindings/akun_binding.dart';
import '../modules/Akun/views/akun_view.dart';
import '../modules/Coin/bindings/coin_binding.dart';
import '../modules/Coin/views/coin_view.dart';
import '../modules/DetailPromo/bindings/detail_promo_binding.dart';
import '../modules/DetailPromo/views/detail_promo_view.dart';
import '../modules/History/bindings/history_binding.dart';
import '../modules/History/views/history_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/MemberArea/bindings/member_area_binding.dart';
import '../modules/MemberArea/views/member_area_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/QRCode/bindings/q_r_code_binding.dart';
import '../modules/QRCode/views/q_r_code_view.dart';
import '../modules/Reward/bindings/reward_binding.dart';
import '../modules/Reward/views/reward_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/Stamp/bindings/stamp_binding.dart';
import '../modules/Stamp/views/stamp_view.dart';
import '../modules/Store/bindings/store_binding.dart';
import '../modules/Store/views/store_view.dart';
import '../modules/StoreEvent/bindings/store_event_binding.dart';
import '../modules/StoreEvent/views/store_event_view.dart';
import '../modules/Vouchers/bindings/vouchers_binding.dart';
import '../modules/Vouchers/views/vouchers_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.COIN,
      page: () => const CoinView(),
      binding: CoinBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => const AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.Q_R_CODE,
      page: () => const QRCodeView(),
      binding: QRCodeBinding(),
    ),
    GetPage(
      name: _Paths.VOUCHERS,
      page: () => const VouchersView(),
      binding: VouchersBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PROMO,
      page: () => const DetailPromoView(),
      binding: DetailPromoBinding(),
    ),
    GetPage(
      name: _Paths.REWARD,
      page: () => const RewardView(),
      binding: RewardBinding(),
    ),
    GetPage(
      name: _Paths.MEMBER_AREA,
      page: () => const MemberAreaView(),
      binding: MemberAreaBinding(),
    ),
    GetPage(
      name: _Paths.STAMP,
      page: () => const StampView(),
      binding: StampBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.STORE_EVENT,
      page: () => const StoreEventView(),
      binding: StoreEventBinding(),
    ),
  ];
}

import 'package:get/get.dart';
import '../widget/bottom_navigation.dart';
import '../page/test3_page.dart';
import '../page/test2_page.dart';
import '../page/test1_page.dart';
import '../page/home_page.dart';
import '../utils/app_routes.dart';

abstract class AppPages {
  static const initial = Routes.home;
  static final routes = [
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.bottomNav, page: () => const BottomNavigation()),
    GetPage(name: Routes.test1, page: () => const Test1Page()),
    GetPage(name: Routes.test2, page: () => const Test2Page()),
    GetPage(name: Routes.test3, page: () => Test3Page()),
  ];
}

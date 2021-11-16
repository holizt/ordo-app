import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../page/test3_page.dart';
import '../page/test2_page.dart';
import '../page/blank_page.dart';
import '../utils/dimen.dart';
import '../page/test1_page.dart';
import '../utils/colors.dart';

class BottomNavigation extends StatefulWidget {
  final bool isActive1;
  final bool isActive2;
  final bool isActive3;
  const BottomNavigation({
    Key? key,
    this.isActive1 = false,
    this.isActive2 = false,
    this.isActive3 = false,
  }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late PersistentTabController _controller;

  List<Widget> _buildPages() {
    return [
      const BlankPage(),
      const BlankPage(),
      _setInitWidget(),
      const BlankPage(),
      const BlankPage(),
    ];
  }

  dynamic _setInitWidget() {
    if (widget.isActive1 == true) {
      return const Test1Page();
    } else if (widget.isActive2 == true) {
      return const Test2Page();
    } else if (widget.isActive3 == true) {
      return Test3Page();
    }
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.assignment),
        iconSize: sizeIconNav,
        activeColorPrimary: ColorsApp.activeBtnColor,
        inactiveColorPrimary: ColorsApp.inActiveBtnColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.swap_horiz),
        iconSize: sizeIconNav,
        activeColorPrimary: ColorsApp.activeBtnColor,
        inactiveColorPrimary: ColorsApp.inActiveBtnColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        iconSize: sizeIconNav,
        activeColorPrimary: ColorsApp.activeBtnColor,
        inactiveColorPrimary: ColorsApp.inActiveBtnColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.assessment),
        iconSize: sizeIconNav,
        activeColorPrimary: ColorsApp.activeBtnColor,
        inactiveColorPrimary: ColorsApp.inActiveBtnColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline),
        iconSize: sizeIconNav,
        activeColorPrimary: ColorsApp.activeBtnColor,
        inactiveColorPrimary: ColorsApp.inActiveBtnColor,
      ),
    ];
  }

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildPages(),
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: ColorsApp.backgroundColor,
      navBarStyle: NavBarStyle.simple,
      padding: const NavBarPadding.only(bottom: 20),
    );
  }
}

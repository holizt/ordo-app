import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/bottom_navigation.dart';
import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTitleWidget(context),
            _buildBtnWidget(size),
          ],
        ),
      )),
    );
  }

  Widget _buildTitleWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Made by',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'XXXXXXX',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildBtnWidget(Size size) {
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: ColorsApp.blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            onPressed: () =>
                Get.off(() => const BottomNavigation(isActive1: true)),
            child: const Text(
              'Test 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: size.width,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: ColorsApp.blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            onPressed: () =>
                Get.to(() => const BottomNavigation(isActive2: true)),
            child: const Text(
              'Test 2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: size.width,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: ColorsApp.blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            onPressed: () =>
                Get.to(() => const BottomNavigation(isActive3: true)),
            child: const Text(
              'Test 3',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

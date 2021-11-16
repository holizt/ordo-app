import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.grey),
            decoration: InputDecoration(
              hintText: 'Cari dengan mengetik barang',
              hintStyle: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: ColorsApp.searchBarColor,
              contentPadding: const EdgeInsets.only(left: 16),
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.search,
                  color: ColorsApp.activeBtnColor,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        _iconWidget(
          context: context,
          image: 'assets/images/options.png',
          backgroundColor: ColorsApp.lightBlueColor,
        ),
        const SizedBox(
          width: 3,
        ),
        _iconWidget(
          context: context,
          image: 'assets/images/shopping_bag.png',
          backgroundColor: ColorsApp.yellowColor,
        ),
        const SizedBox(
          width: 3,
        ),
        _iconWidget(
          context: context,
          image: 'assets/images/notif.png',
          backgroundColor: ColorsApp.redColor,
        ),
      ],
    );
  }

  Widget _iconWidget({
    required BuildContext context,
    required String image,
    required Color backgroundColor,
  }) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor,
      ),
      child: Image.asset(
        image,
        scale: 1.6,
      ),
    );
  }
}

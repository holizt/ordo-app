import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimen.dart';

class MarketItem extends StatelessWidget {
  final String imgUrl;
  final String rating;
  final Color backgroundColor;
  final String priceCorect;
  final String price;
  final String discount;
  final String title;
  const MarketItem({
    Key? key,
    required this.imgUrl,
    required this.rating,
    required this.backgroundColor,
    required this.price,
    required this.priceCorect,
    required this.discount,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 130,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor,
          ),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 4),
                width: 130,
                height: heightDiscRating,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorsApp.yellowColor,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_sharp,
                      color: Colors.white,
                      size: 15,
                    ),
                    FittedBox(
                      child: Text(
                        rating,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FittedBox(
              child: Text(
                'Rp ' + priceCorect,
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: ColorsApp.lightBlueColor,
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                width: 95,
                height: heightDiscRating,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: ColorsApp.blueColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: FittedBox(
                    child: Text(
                      'Discount ' + discount,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          'Rp ' + price,
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: ColorsApp.blueColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

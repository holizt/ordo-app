import 'package:flutter/material.dart';
import '../model/color_model.dart';
import '../model/market_model.dart';
import '../utils/colors.dart';
import '../widget/custom_field.dart';
import '../widget/market_item.dart';

class Test1Page extends StatelessWidget {
  const Test1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                child: CustomField(),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 200,
                child: _buildSliderWidget(size),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(child: _buildGridWidget(context, size)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridWidget(BuildContext context, Size size) {
    return FutureBuilder<String>(
      future:
          DefaultAssetBundle.of(context).loadString('assets/data/market.json'),
      builder: (_, snapshot) {
        var marketParsed = parseMarkets(snapshot.data);
        return GridView.builder(
          itemCount: marketParsed.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 200,
          ),
          itemBuilder: (_, index) {
            var market = marketParsed[index];
            return MarketItem(
              imgUrl: market.imageUrl,
              rating: market.rating,
              backgroundColor: setColorItem(market),
              discount: market.discount,
              priceCorect: market.priceCorrect,
              price: market.price.toString(),
              title: market.title,
            );
          },
        );
      },
    );
  }

  Widget _buildSliderWidget(Size size) {
    return Column(
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              'assets/images/frame.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorsApp.blueColor,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 40,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorsApp.lightBlueColor,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 60,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorsApp.blueColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}

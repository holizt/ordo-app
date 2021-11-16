import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../utils/dimen.dart';

class Test2Page extends StatelessWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundColor,
        elevation: 0,
        title: Text(
          'PRODUK DETAIL',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: ColorsApp.lightBlueColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        leadingWidth: 35,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            margin: const EdgeInsets.only(left: 8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.lightBlueColor,
            ),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.shopping_bag,
              color: ColorsApp.lightBlueColor,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.notifications,
              color: ColorsApp.redColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 190, child: _buildSliderWidget()),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: _buildStackWidget(context))
        ],
      ),
    );
  }

  Widget _buildSliderWidget() {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/slide.png',
              fit: BoxFit.contain,
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
              width: 40,
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

  Widget _buildStackWidget(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              color: ColorsApp.redColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
          height: double.infinity,
          decoration: const BoxDecoration(
              color: ColorsApp.backgroundColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
          child: _buildDdetailWidget(context),
        ),
      ],
    );
  }

  Widget _buildDdetailWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Tas Gucci',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: ColorsApp.activeBtnColor,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Container(
                width: 100,
                height: heightInfo,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: ColorsApp.yellowColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  'Barang Bekas',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: heightInfo,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: ColorsApp.lightBlueColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    'Stok 100',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Rp 126.000',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: ColorsApp.lightBlueColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rp 100.500',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: ColorsApp.blueColor, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 100,
                height: heightDiscRating,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: ColorsApp.blueColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  'Diskon 10%',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Vendor',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.orangeAccent,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/eiger.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Eiger Store',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  const Icon(
                    Icons.star_sharp,
                    color: ColorsApp.lightBlueColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '5.0 | 200 Terjual',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: ColorsApp.lightBlueColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Deskripsi',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.black54,
                  ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              'Ulasan dan Penilaian',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _buildLIstRatingWidget(
            context: context,
            imgUrl: 'assets/images/person1.png',
            name: 'Maude Hall',
          ),
          const SizedBox(
            height: 16,
          ),
          _buildLIstRatingWidget(
            context: context,
            imgUrl: 'assets/images/person2.png',
            name: 'Ester Howard',
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _buildLIstRatingWidget(
      {required BuildContext context,
      required String imgUrl,
      required String name}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
              height: 35,
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  '14 min',
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        color: Colors.black26,
                      ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Row(
              children: [
                const Icon(
                  Icons.star_sharp,
                  color: Colors.orangeAccent,
                  size: 17,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '5.0',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            'That\'s a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.black54,
                  fontSize: 10,
                ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

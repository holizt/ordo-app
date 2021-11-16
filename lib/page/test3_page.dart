import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/checkout_controller.dart';
import '../model/checkout_model.dart';
import '../utils/colors.dart';
import '../widget/checkout_item.dart';

class Test3Page extends StatelessWidget {
  Test3Page({Key? key}) : super(key: key);

  final _controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundColor,
        elevation: 0,
        title: Text(
          'Checkout',
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              _buildListCheckout(context),
              _buildPaymentWdget(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListCheckout(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/data/checkout.json'),
      builder: (_, snapshot) {
        var checkouts = parseCheckouts(snapshot.data);
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: checkouts.length,
          itemBuilder: (_, index) {
            var checkout = checkouts[index];
            return Obx(() => CheckoutItem(
                  imageUrl: checkout.imageUrl,
                  title: checkout.title,
                  price: checkout.price,
                  result: _controller.result.value.toString(),
                  onTapDic: () => _controller.dicrement(),
                  onTapInc: () => _controller.increment(),
                  onTapNote: () => _controller.activateNote,
                  isActive: _controller.isActive.value,
                ));
          },
        );
      },
    );
  }

  Widget _buildPaymentWdget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'Detail Pembayaran',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Tas Gucci',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '(Qty.1)',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Rp 75.000',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Tas Eiger',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '(Qty.1)',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'Rp 75.000',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ongkos Kirim',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Rp 10.000',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(thickness: 3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sub Total',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Rp 450.000',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsApp.blueColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Waktu Pengantaran',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsApp.blueColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Alamat Pengiriman',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Material(
            elevation: 6,
            borderRadius: BorderRadius.circular(16),
            clipBehavior: Clip.antiAlias,
            color: Colors.white70,
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.activeBtnColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 55,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorsApp.blueColor,
            ),
            child: Center(
              child: Text(
                'Bayar sekarang',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

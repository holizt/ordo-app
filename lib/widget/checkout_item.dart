import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../utils/colors.dart';
import '../utils/dimen.dart';

class CheckoutItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String result;
  final Function() onTapDic;
  final Function() onTapInc;
  final Function() onTapNote;
  final bool isActive;

  const CheckoutItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onTapDic,
    required this.onTapInc,
    required this.result,
    required this.onTapNote,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.lightBlueColor,
            ),
            child: const SlidableAction(
              onPressed: null,
              icon: Icons.delete,
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Material(
              elevation: 6,
              borderRadius: BorderRadius.circular(16),
              clipBehavior: Clip.antiAlias,
              type: MaterialType.card,
              color: Colors.white70,
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        elevation: 6,
                        clipBehavior: Clip.antiAlias,
                        type: MaterialType.circle,
                        color: Colors.lightBlue[50],
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            price,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: ColorsApp.lightBlueColor,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: heightInfo,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: ColorsApp.blueColor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: onTapDic,
                                  child: Text(
                                    '-',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  result,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                GestureDetector(
                                  onTap: onTapInc,
                                  child: Text(
                                    '+',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapNote,
                            child: Container(
                              width: 100,
                              height: heightInfo,
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: ColorsApp.lightBlueColor,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                      child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  )),
                                  Text(
                                    'Catatan',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            (isActive == true) ? _buildNoteWidget(context) : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildNoteWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        type: MaterialType.card,
        color: Colors.white70,
        child: SizedBox(
          width: double.infinity,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Catatan Item',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Ketik disini...',
                    hintStyle: Theme.of(context).textTheme.overline!.copyWith(
                          color: Colors.black26,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

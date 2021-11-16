import 'dart:convert';

class CheckoutModel {
  String price;
  String title;
  String imageUrl;

  CheckoutModel({
    required this.price,
    required this.title,
    required this.imageUrl,
  });

  factory CheckoutModel.fromJson(Map<String, dynamic> market) {
    return CheckoutModel(
      price: market['price'],
      title: market['title'],
      imageUrl: market['imgUrl'],
    );
  }
}

List<CheckoutModel> parseCheckouts(String? json) {
  if (json == null) {
    return [];
  }
  final List parsed = jsonDecode(json);
  return parsed.map((e) => CheckoutModel.fromJson(e)).toList();
}

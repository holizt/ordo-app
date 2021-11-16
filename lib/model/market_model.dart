import 'dart:convert';

class MarketModel {
  String rating;
  String priceCorrect;
  int price;
  String discount;
  String title;
  String imageUrl;
  String color;

  MarketModel({
    required this.rating,
    required this.priceCorrect,
    required this.price,
    required this.discount,
    required this.title,
    required this.imageUrl,
    required this.color,
  });

  factory MarketModel.fromJson(Map<String, dynamic> market) {
    return MarketModel(
      rating: market['rating'],
      priceCorrect: market['priceCorect'],
      price: market['price'],
      discount: market['discount'],
      title: market['title'],
      imageUrl: market['imageUrl'],
      color: market['color'],
    );
  }
}

List<MarketModel> parseMarkets(String? json) {
  if (json == null) {
    return [];
  }
  final List parsed = jsonDecode(json);
  return parsed.map((e) => MarketModel.fromJson(e)).toList();
}

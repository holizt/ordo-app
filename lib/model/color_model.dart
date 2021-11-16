import 'package:flutter/material.dart';
import 'market_model.dart';
import '../utils/colors.dart';

Color setColorItem(MarketModel market) {
  Color color;
  switch (market.color) {
    case 'item1':
      color = ColorsApp.item1Color;
      break;
    case 'item2':
      color = ColorsApp.item2Color;
      break;
    case 'item3':
      color = ColorsApp.item3Color;
      break;
    default:
      color = ColorsApp.blueColor;
  }
  return color;
}

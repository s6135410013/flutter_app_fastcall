import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/screens/food_lists.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodLists(),
    theme: ThemeData(
      fontFamily: "Minecraft",
    ),
  ));
}

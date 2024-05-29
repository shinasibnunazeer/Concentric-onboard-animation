import 'package:flutter/material.dart';

class PageModel {
  final String title;
  // String description;
  final String image;
  final Color color;
  final Color textColor;

  PageModel(
      {required this.image,
      required this.textColor,
      required this.color,
      required this.title});
}

import 'package:flutter/cupertino.dart';

class HomeCardModel {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  HomeCardModel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });
}
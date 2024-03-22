import 'package:flutter/material.dart';

class ExploreGames {
  final String name;

  final List<String> games;
  final Icon icon;
  final int age;
  final String image;
  ExploreGames(
      {required this.name,
      required this.games,
      required this.icon,
      required this.age,
      required this.image});
}

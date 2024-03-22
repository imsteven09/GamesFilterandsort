import 'package:buddyfiltergames/core/constants/color_constants.dart';
import 'package:buddyfiltergames/core/constants/image_path_constants.dart';
import 'package:buddyfiltergames/core/constants/string_constants.dart';
import 'package:buddyfiltergames/core/model/exploremodel.dart';
import 'package:flutter/material.dart';

class ExploreData extends ChangeNotifier {
  List<String> allgames = [
    'Chess',
    'Badminton',
    'Photography',
    'Yoga',
    'Tennis',
    'Cricket',
    'Soccer',
    'Volleyball',
    'Table Tennis',
    'Rugby'
  ];
  List<ExploreGames> exploredatalist = [
    ExploreGames(
        name: AppStrings.rahul,
        games: [
          AppStrings.badminton,
          AppStrings.photography,
          AppStrings.cricket
        ],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 21,
        image: ImagePath.image1),
    ExploreGames(
        name: AppStrings.mohan,
        games: [AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 22,
        image: ImagePath.image2),
    ExploreGames(
        name: AppStrings.sunita,
        games: [AppStrings.cricket],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 26,
        image: ImagePath.image3),
    ExploreGames(
        name: AppStrings.anjali,
        games: [AppStrings.cricket, AppStrings.badminton],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 28,
        image: ImagePath.image4),
    ExploreGames(
        name: AppStrings.raghav,
        games: [AppStrings.rugby, AppStrings.photography],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 22,
        image: ImagePath.image5),
    ExploreGames(
        name: AppStrings.umesh,
        games: [AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 25,
        image: ImagePath.image6),
    ExploreGames(
        name: AppStrings.divyanshu,
        games: [
          AppStrings.tabletennis,
          AppStrings.cricket,
          AppStrings.badminton
        ],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 25,
        image: ImagePath.image7),
    ExploreGames(
        name: AppStrings.varun,
        games: [AppStrings.tennis],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 27,
        image: ImagePath.image8),
    ExploreGames(
        name: AppStrings.maitri,
        games: [AppStrings.vollyball, AppStrings.tennis],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 26,
        image: ImagePath.image9),
    ExploreGames(
        name: AppStrings.soumya,
        games: [AppStrings.tennis, AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 29,
        image: ImagePath.image10)
  ];
  List<ExploreGames> exploredatalistcopy = [
    ExploreGames(
        name: AppStrings.rahul,
        games: [
          AppStrings.badminton,
          AppStrings.photography,
          AppStrings.cricket
        ],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 21,
        image: ImagePath.image1),
    ExploreGames(
        name: AppStrings.mohan,
        games: [AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 22,
        image: ImagePath.image2),
    ExploreGames(
        name: AppStrings.sunita,
        games: [AppStrings.cricket],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 26,
        image: ImagePath.image3),
    ExploreGames(
        name: AppStrings.anjali,
        games: [AppStrings.cricket, AppStrings.badminton],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 28,
        image: ImagePath.image4),
    ExploreGames(
        name: AppStrings.raghav,
        games: [AppStrings.rugby, AppStrings.photography],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 22,
        image: ImagePath.image5),
    ExploreGames(
        name: AppStrings.umesh,
        games: [AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 25,
        image: ImagePath.image6),
    ExploreGames(
        name: AppStrings.divyanshu,
        games: [
          AppStrings.tabletennis,
          AppStrings.cricket,
          AppStrings.badminton
        ],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 25,
        image: ImagePath.image7),
    ExploreGames(
        name: AppStrings.varun,
        games: [AppStrings.tennis],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 27,
        image: ImagePath.image8),
    ExploreGames(
        name: AppStrings.maitri,
        games: [AppStrings.vollyball, AppStrings.tennis],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 26,
        image: ImagePath.image9),
    ExploreGames(
        name: AppStrings.soumya,
        games: [AppStrings.tennis, AppStrings.chess],
        icon: Icon(
          Icons.diamond,
          size: 16,
          color: AppColors.white,
        ),
        age: 29,
        image: ImagePath.image10)
  ];

  void filterdata(String gamename) {
    exploredatalist = exploredatalistcopy;
    exploredatalist = exploredatalistcopy
        .where((element) => element.games.contains(gamename))
        .toList();

    notifyListeners();
  }

  void showall() {
    exploredatalist = exploredatalistcopy;
    notifyListeners();
  }

  void sortdata() {
    exploredatalist.sort(((a, b) => a.name.compareTo(b.name)));
    notifyListeners();
  }
}

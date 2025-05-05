import 'package:flutter/material.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
        image: AppStrings.blackColorImage,
        jpName: AppStrings.blackColorJp,
        enName: AppStrings.blackColorEn,
        sound: AppStrings.blackColorSound),
    Number(
        image: AppStrings.brownColorImage,
        jpName: AppStrings.brownColorJp,
        enName: AppStrings.brownColorEn,
        sound: AppStrings.brownColorSound),
    Number(
        image: AppStrings.dustyYellowColorImage,
        jpName: AppStrings.dustyYellowColorJp,
        enName: AppStrings.dustyYellowColorEn,
        sound: AppStrings.dustyYellowColorSound),
    Number(
        image: AppStrings.grayColorImage,
        jpName: AppStrings.grayColorJp,
        enName: AppStrings.grayColorEn,
        sound: AppStrings.grayColorSound),
    Number(
        image: AppStrings.greenColorImage,
        jpName: AppStrings.greenColorJp,
        enName: AppStrings.greenColorEn,
        sound: AppStrings.greenColorSound),
    Number(
        image: AppStrings.redColorImage,
        jpName: AppStrings.redColorJp,
        enName: AppStrings.redColorEn,
        sound: AppStrings.redColorSound),
    Number(
        image: AppStrings.whiteColorImage,
        jpName: AppStrings.whiteColorJp,
        enName: AppStrings.whiteColorEn,
        sound: AppStrings.whiteColorSound),
    Number(
        image: AppStrings.yellowColorImage,
        jpName: AppStrings.yellowColorJp,
        enName: AppStrings.yellowColorEn,
        sound: AppStrings.yellowColorSound),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brownColor,
        title: const Text(AppStrings.colorsWord),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: AppColors.purpleColor,
            number: numbers[index],
            sound: '',
          );
        },
      ),
    );
  }
}

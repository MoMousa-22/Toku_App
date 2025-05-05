import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';

import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        image: AppStrings.numberOneImage,
        jpName: AppStrings.numberOneJpName,
        enName: AppStrings.numberOneEnName,
        sound: AppStrings.numberOneSound),
    Number(
        image: AppStrings.numberTwoImage,
        jpName: AppStrings.numberTwoJpName,
        enName: AppStrings.numberTwoEnName,
        sound: AppStrings.numberTwoSound),
    Number(
        image: AppStrings.numberThreeImage,
        jpName: AppStrings.numberThreeJpName,
        enName: AppStrings.numberThreeEnName,
        sound: AppStrings.numberThreeSound),
    Number(
        image: AppStrings.numberFourImage,
        jpName: AppStrings.numberFourJpName,
        enName: AppStrings.numberFourEnName,
        sound: AppStrings.numberFourSound),
    Number(
        image: AppStrings.numberFiveImage,
        jpName: AppStrings.numberFiveJpName,
        enName: AppStrings.numberFiveEnName,
        sound: AppStrings.numberFiveSound),
    Number(
        image: AppStrings.numberSixImage,
        jpName: AppStrings.numberSixJpName,
        enName: AppStrings.numberSixEnName,
        sound: AppStrings.numberSixSound),
    Number(
        image: AppStrings.numberSevenImage,
        jpName: AppStrings.numberSevenJpName,
        enName: AppStrings.numberSevenEnName,
        sound: AppStrings.numberSevenSound),
    Number(
        image: AppStrings.numberEightImage,
        jpName: AppStrings.numberEightJpName,
        enName: AppStrings.numberEightEnName,
        sound: AppStrings.numberEightSound),
    Number(
        image: AppStrings.numberNineImage,
        jpName: AppStrings.numberNineJpName,
        enName: AppStrings.numberNineEnName,
        sound: AppStrings.numberNineSound),
    Number(
        image: AppStrings.numberTenImage,
        jpName: AppStrings.numberTenJpName,
        enName: AppStrings.numberTenEnName,
        sound: AppStrings.numberTenSound),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brownColor,
        title: const Text(AppStrings.numbersWord),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: AppColors.yellowColor,
            number: numbers[index],
            sound: '',
          );
        },
      ),
    );
  }
}

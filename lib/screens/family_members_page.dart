import 'package:flutter/material.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
        image: AppStrings.fatherImage,
        jpName: AppStrings.fatherJpName,
        enName: AppStrings.fatherEnName,
        sound: AppStrings.fatherSound),
    Number(
        image: AppStrings.daughterImage,
        jpName: AppStrings.daughterJpName,
        enName: AppStrings.daughterEnName,
        sound: AppStrings.daughterSound),
    Number(
        image: AppStrings.grandFatherImage,
        jpName: AppStrings.grandFatherJpName,
        enName: AppStrings.grandFatherEnName,
        sound: AppStrings.grandFatherSound),
    Number(
        image: AppStrings.motherImage,
        jpName: AppStrings.motherJpName,
        enName: AppStrings.motherEnName,
        sound: AppStrings.motherSound),
    Number(
        image: AppStrings.grandMotherImage,
        jpName: AppStrings.grandMotherJpName,
        enName: AppStrings.grandMotherEnName,
        sound: AppStrings.grandMotherSound),
    Number(
        image: AppStrings.olderBrotherImage,
        jpName: AppStrings.olderBrotherJpName,
        enName: AppStrings.olderBrotherEnName,
        sound: AppStrings.olderBrotherSound),
    Number(
        image: AppStrings.olderSisterImage,
        jpName: AppStrings.olderSisterJpName,
        enName: AppStrings.olderSisterEnName,
        sound: AppStrings.olderSisterSound),
    Number(
        image: AppStrings.sonImage,
        jpName: AppStrings.sonJpName,
        enName: AppStrings.sonEnName,
        sound: AppStrings.sonSound),
    Number(
        image: AppStrings.youngerBrotherImage,
        jpName: AppStrings.youngerBrotherJpName,
        enName: AppStrings.youngerBrotherEnName,
        sound: AppStrings.youngerBrotherSound),
    Number(
        image: AppStrings.youngerSisterImage,
        jpName: AppStrings.youngerSisterJpName,
        enName: AppStrings.youngerSisterEnName,
        sound: AppStrings.youngerSisterSound),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brownColor,
        title: const Text(AppStrings.familyMembersWord),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: AppColors.greenColor,
            number: numbers[index],
            sound: '',
          );
        },
      ),
    );
  }
}

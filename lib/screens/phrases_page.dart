import 'package:flutter/material.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        jpName: AppStrings.phraseOneJp,
        enName: AppStrings.phraseOneEn,
        sound: AppStrings.phraseOneSound),
    Number(
        jpName: AppStrings.phraseTwoJp,
        enName: AppStrings.phraseTwoEn,
        sound: AppStrings.phraseTwoSound),
    Number(
        jpName: AppStrings.phraseThreeJp,
        enName: AppStrings.phraseThreeEn,
        sound: AppStrings.phraseThreeSound),
    Number(
        jpName: AppStrings.phraseFourJp,
        enName: AppStrings.phraseFourEn,
        sound: AppStrings.phraseFourSound),
    Number(
        jpName: AppStrings.phraseFiveJp,
        enName: AppStrings.phraseFiveEn,
        sound: AppStrings.phraseFiveSound),
    Number(
        jpName: AppStrings.phraseSixJp,
        enName: AppStrings.phraseSixEn,
        sound: AppStrings.phraseSixSound),
    Number(
        jpName: AppStrings.phraseSevenJp,
        enName: AppStrings.phraseSevenEn,
        sound: AppStrings.phraseSevenSound),
    Number(
        jpName: AppStrings.phraseEightJp,
        enName: AppStrings.phraseEightEn,
        sound: AppStrings.phraseEightSound),
    Number(
        jpName: AppStrings.phraseNineJp,
        enName: AppStrings.phraseNineEn,
        sound: AppStrings.phraseNineSound),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.brownColor,
        title: const Text(AppStrings.phrasesWords),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            color: AppColors.cyanColor,
            number: numbers[index],
            sound: '',
          );
        },
      ),
    );
  }
}

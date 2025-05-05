import 'package:flutter/material.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.brownColor,
          title: const Text(
            AppStrings.appName,
          ),
        ),
        body: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ));
              },
              text: AppStrings.numbersWord,
              color: AppColors.yellowColor,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembersPage();
                  },
                ));
              },
              color: AppColors.greenColor,
              text: AppStrings.familyMembersWord,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ));
              },
              color: AppColors.purpleColor,
              text: AppStrings.colorsWord,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ));
              },
              color: AppColors.cyanColor,
              text: AppStrings.phrasesWords,
            ),
          ],
        ));
  }
}

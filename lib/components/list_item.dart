import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/constants/app_colors.dart';
import 'package:toku_app/constants/app_strings.dart';

import '../models/item.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.number,
      required this.sound,
      required this.color})
      : super(key: key);
  final Number number;
  final String sound;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          if (number.image != null)
            Container(
                color: AppColors.whiteColor, child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () async {
              try {
                final player = AudioPlayer();
                await player.play(AssetSource(number.sound));
              } catch (Error) {
                print(Error);
                return _showSnackbar(context);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

void _showSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text(AppStrings.errorMessage),
      duration: Duration(seconds: 2),
    ),
  );
}

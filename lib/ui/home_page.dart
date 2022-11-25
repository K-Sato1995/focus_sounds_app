import 'package:flutter/material.dart';

import 'package:focus_sound_app/styles/colors.dart';
import 'package:focus_sound_app/widgets/audio_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.themeColor,
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            const Text('Focus sound',
                style: TextStyle(
                    color: CustomColors.textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [AudioBox(), AudioBox(), AudioBox()]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [AudioBox(), AudioBox(), AudioBox()]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [AudioBox(), AudioBox(), AudioBox()]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

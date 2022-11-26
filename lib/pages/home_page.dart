import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:focus_sound_app/styles/colors.dart';
import 'package:focus_sound_app/widgets/audio_box.dart';
import 'package:focus_sound_app/widgets/player.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:focus_sound_app/gen/assets.gen.dart';

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
            const _AudioBoxList(),
          ],
        ),
      ),
    );
  }
}

class _AudioBoxList extends ConsumerWidget {
  const _AudioBoxList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef re) {
    final player = AudioPlayer();
    player.setSource(AssetSource('light-rain.wav'));

    return GridView.count(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      crossAxisSpacing: 30,
      mainAxisSpacing: 60,
      crossAxisCount: 3,
      shrinkWrap: true,
      children: [
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        AudioBox(),
        PlayerWidget(player: player),
      ],
    );
  }
}
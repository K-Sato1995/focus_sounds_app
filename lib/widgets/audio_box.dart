import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:focus_sound_app/gen/assets.gen.dart';

class AudioBox extends StatelessWidget {
  const AudioBox({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.loop);
    player.setSource(AssetSource('light-rain.wav'));

    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: InkWell(
            onTap: () => {print('test')},
            child: SvgPicture.asset(
              Assets.cafeSvg.path,
            ),
          ),
        ),
        Slider(
          value: 0,
          onChanged: (value) {},
        ),
      ],
    );
  }
}

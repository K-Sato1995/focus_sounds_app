import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:focus_sound_app/states/player_state.dart';
import 'package:focus_sound_app/gen/assets.gen.dart';

class AudioBox extends StatelessWidget {
  final AudioPlayerItem player;

  const AudioBox({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: InkWell(
            onTap: () => {print(player.title), player.resume()},
            child: SvgPicture.asset(
              player.imageResourcePath,
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

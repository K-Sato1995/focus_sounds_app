import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:audioplayers/audioplayers.dart' as audio_players;
import 'package:focus_sound_app/states/player_state.dart';
import 'package:focus_sound_app/widgets/volume_slider.dart';

class AudioBox extends ConsumerWidget {
  final AudioPlayerItem player;

  const AudioBox({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerController = ref.watch(playerProvider.notifier);

    return Column(
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: InkWell(
            onTap: () => {
              if (player.state == audio_players.PlayerState.playing)
                {
                  playerController.pause(player.playerId),
                }
              else
                {
                  playerController.play(player.playerId),
                }
            },
            child: SvgPicture.asset(
              player.imageResourcePath,
            ),
          ),
        ),
        if (player.state == audio_players.PlayerState.playing)
          VolumeSlider(player: player)
      ],
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

part 'player_state.freezed.dart';

// const PlayerItems = [
//   {
//     'title': 'rain',
//     'soundResourcePath': 'light-rain.wav',
//     'imageResourcePath': 'rain.svg',
//   }
// ];

class AudioPlayerItem extends AudioPlayer {
  final String title;
  final String imageResourcePath;
  final String soundResourcePath;

  AudioPlayerItem({
    required this.title,
    required this.imageResourcePath,
    required this.soundResourcePath,
  });
}

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default([]) List<AudioPlayerItem> playerList,
  }) = _PlayerState;

  const PlayerState._();
}

final playerProvider = StateNotifierProvider<PlayerNotifier, PlayerState>(
  (ref) => PlayerNotifier(),
);

class PlayerNotifier extends StateNotifier<PlayerState> {
  PlayerNotifier() : super(const PlayerState()) {
    _init();
  }

  void _init() async {
    print('init players here');
    final player = AudioPlayerItem(
        title: 'rain',
        imageResourcePath: 'rain.svg',
        soundResourcePath: 'light-rain.wav');

    await player.setSource(AssetSource(player.soundResourcePath));
    await player.setReleaseMode(ReleaseMode.loop);

    state = state.copyWith(playerList: [player]);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:focus_sound_app/consts.dart';
part 'player_state.freezed.dart';

class AudioPlayerItem extends AudioPlayer {
  final String title;
  final String imageResourcePath;
  final String soundResourcePath;
  double currentVolume = 0.5;
  bool isPlaying = false;

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
    for (var element in playerItems) {
      final playerItem = AudioPlayerItem(
          title: element['title'] as String,
          imageResourcePath: element['imageResourcePath'] as String,
          soundResourcePath: element['soundResourcePath'] as String);

      await playerItem.setSource(AssetSource(playerItem.soundResourcePath));
      await playerItem.setReleaseMode(ReleaseMode.loop);

      state = state.copyWith(
        playerList: [...state.playerList, playerItem],
      );
    }
  }

  @override
  void dispose() {
    for (var player in state.playerList) {
      player.release();
    }
    super.dispose();
  }

  void play(String playerId) {
    for (var player in state.playerList) {
      if (player.playerId == playerId) {
        player.resume();
        player.isPlaying = true;
      }
    }
  }

  void pause(String playerId) {
    for (var player in state.playerList) {
      if (player.playerId == playerId) {
        player.pause();
        player.isPlaying = false;
      }
    }
  }

  void onChangeVolume(String playerId, double volume) {
    for (var player in state.playerList) {
      if (player.playerId == playerId) {
        player.currentVolume = volume;
        player.setVolume(volume);
      }
    }
  }
}

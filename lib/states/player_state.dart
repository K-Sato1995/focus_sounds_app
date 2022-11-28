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
  final double currentVolume;

  AudioPlayerItem({
    required this.title,
    required this.imageResourcePath,
    required this.soundResourcePath,
    this.currentVolume = 0.5,
  });

  AudioPlayerItem copyWith({
    String? title,
    String? imageResourcePath,
    String? soundResourcePath,
    double? currentVolume,
  }) {
    return AudioPlayerItem(
      title: title ?? this.title,
      imageResourcePath: imageResourcePath ?? this.imageResourcePath,
      soundResourcePath: soundResourcePath ?? this.soundResourcePath,
      currentVolume: currentVolume ?? this.currentVolume,
    );
  }
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

      playerItem.onPlayerStateChanged.listen((state) {
        print(state);
      });
      state = state.copyWith(
        playerList: [...state.playerList, playerItem],
      );
    }
  }

  @override
  void dispose() {
    for (var player in state.playerList) {
      player.dispose();
    }
    super.dispose();
  }

  void play(String playerId) {
    for (var player in state.playerList) {
      if (player.playerId == playerId) {
        player.resume();
      }
    }
    state = state.copyWith();
  }

  void pause(String playerId) {
    for (var player in state.playerList) {
      if (player.playerId == playerId) {
        player.pause();
      }
    }
    state = state.copyWith();
  }

  // NOT USED RN
  void onChangeVolume(String playerId, double volume) {
    final playerList = state.playerList.map((player) {
      if (player.playerId == playerId) {
        final newPlayer = player.copyWith(currentVolume: volume);
        newPlayer.setVolume(newPlayer.currentVolume);
        return newPlayer;
      }
      return player;
    }).toList();

    state = state.copyWith(playerList: playerList);
  }
}

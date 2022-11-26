import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default([]) List<AudioPlayer> playerList,
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
    final player = AudioPlayer();
    await player.setSource(AssetSource('light-rain.wav'));
    await player.setReleaseMode(ReleaseMode.loop);

    state = state.copyWith(playerList: [player]);
  }
}

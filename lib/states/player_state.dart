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

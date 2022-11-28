import 'package:flutter/material.dart';
import 'package:focus_sound_app/states/player_state.dart';

class VolumeSlider extends StatefulWidget {
  final AudioPlayerItem player;

  const VolumeSlider({
    super.key,
    required this.player,
  });

  @override
  State<VolumeSlider> createState() => _VolumeSliderState();
}

class _VolumeSliderState extends State<VolumeSlider> {
  double _currentVolume = 0.5;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentVolume,
      max: 1.0,
      divisions: 5,
      onChanged: (value) {
        setState(() {
          _currentVolume = value;
          widget.player.setVolume(value);
        });
      },
    );
  }
}

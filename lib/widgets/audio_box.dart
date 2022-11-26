import 'package:flutter/material.dart';

import 'package:focus_sound_app/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioBox extends StatelessWidget {
  const AudioBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: SvgPicture.asset(
        Assets.cafeSvg.path,
      ),
    );
  }
}

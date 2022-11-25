import 'package:flutter/material.dart';

import 'package:focus_sound_app/styles/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.themeColor,
      body: Center(
        child: Text(
          'Hello World',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}

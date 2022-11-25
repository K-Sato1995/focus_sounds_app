import 'package:flutter/material.dart';
import 'package:focus_sound_app/ui/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sample App',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        body: HomePage());
  }
}

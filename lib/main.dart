import 'package:flutter/material.dart';

import 'package:timer_bloc/screen/timer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temporizador Flutter',
      theme: ThemeData(
        primaryColor: Colors.blue.shade400,
        // primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      home: TimerPage(),
    );
  }
}

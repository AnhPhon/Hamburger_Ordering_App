import 'package:fastfoodapp/Screens/Flash_Screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlashScreen(),
    );
  }
}

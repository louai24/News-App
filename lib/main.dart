import 'package:flutter/material.dart';
import 'package:newsapp/layout/settingTap/theme.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lighttheme,
      darkTheme: darktheme,
      debugShowCheckedModeBanner: false,
      initialRoute: home.rountName,
      routes: {
        home.rountName: (context) => home(),
      },
    );
  }
}


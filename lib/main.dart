import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/HomePage.dart';
import 'package:theme_changer/Provider/toggletheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ChangeTheme()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Homepage(),
      ),
    );
  }
}

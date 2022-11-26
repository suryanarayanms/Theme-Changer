import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/Provider/toggletheme.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ChangeTheme>().currenttheme
          ? Colors.white
          : Colors.black,
      body: Center(
          child: GestureDetector(
        onTap: () => {
          context.read<ChangeTheme>().toggletheme(),
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.watch<ChangeTheme>().currenttheme
                  ? Colors.black
                  : Colors.white,
            ),
            height: 100,
            width: 100,
            child: Icon(
              context.watch<ChangeTheme>().currenttheme
                  ? Icons.dark_mode
                  : Icons.light_mode,
              size: 50,
              color: context.watch<ChangeTheme>().currenttheme
                  ? Colors.white
                  : Colors.black,
            )),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/menu_bricks.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuMain(),
    );
  }
}

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 0, 0),
        child: IconButton(icon: const Icon(Icons.accessible), onPressed: () {}),
      ),
      centerTitle: false,
      elevation: 0,
    );
  }
}

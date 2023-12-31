import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/menu_bricks.dart';
import 'package:fresh_kebab/general/common_widgets/footer.dart';
import 'package:fresh_kebab/general/common_widgets/header.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  State<MenuMain> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfff5),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: MasterHeader(),
      ),
      body: ListView(
        children: const [
          FullMenu(),
          Footer(),
        ],
      ),
    );
  }
}

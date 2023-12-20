import 'package:flutter/material.dart';
import 'package:fresh_kebab/mobile/menu_mobile.dart';
import 'package:fresh_kebab/tablet/menu_tablet.dart';
import 'package:fresh_kebab/widgets/footer.dart';
import 'package:fresh_kebab/widgets/header.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  State<MenuMain> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 705 ? menuMobile() : menuTablet();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0), child: myAppBar),
      body: ListView(
        children: [
          content,
          const Footer(),
        ],
      ),
    );
  }
}

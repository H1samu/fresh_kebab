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
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: FloatingActionButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  side: BorderSide(color: Color(0xff028f52), width: 2)),
              backgroundColor: Colors.white,
              onPressed: () {},
              child: const Icon(
                Icons.shopping_bag_outlined,
                color: Color(0xff028f52),
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: -8,
            right: -8,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xffcc3333),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              height: 25,
              width: 25,
              child: const Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
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

import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];

var appBarColor = Colors.grey;

var drawerContent = const DrawerContent();

var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(' '),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  child: drawerContent,
);

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        Image.asset(
          'assets/images/logos/fk.png',
          width: 150,
          height: 60,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 60),
        GestureDetector(onTap: null, child: const Text('Пицца')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Фри-меню')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Напитки')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Шаурма')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Бургеры')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Дёнер')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Горячие блюда')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Салаты')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Выпечка')),
        const SizedBox(height: 30),
        GestureDetector(onTap: null, child: const Text('Десерты')),
      ],
    );
  }
}

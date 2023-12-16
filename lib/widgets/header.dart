import 'package:flutter/material.dart';
import 'package:fresh_kebab/responsive/mobile/main_mobile.dart';
import 'package:fresh_kebab/responsive/mobile/contacts_mobile.dart';
import 'package:fresh_kebab/app.dart';

var appBarWithTab = AppBar(
  scrolledUnderElevation: 0,
  shape: Border.all(color: Colors.white),
  foregroundColor: Colors.white,
  backgroundColor: Colors.white,
  elevation: 0,
  bottom: myTabBar,
  flexibleSpace: myHeader,
);

var appBarWithoutTab = AppBar(
  scrolledUnderElevation: 0,
  shape: Border.all(color: Colors.white),
  foregroundColor: Colors.white,
  backgroundColor: Colors.white,
  elevation: 0,
  flexibleSpace: myHeader,
);

var myHeader = Padding(
  padding: const EdgeInsets.only(right: 40, top: 20, bottom: 40, left: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset(
        "assets/images/logos/fk.png",
        width: 150,
        height: 60,
        fit: BoxFit.cover,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
                text: 'Доставка с ',
                style: TextStyle(fontSize: 11, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '9:00 ', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'до '),
                  TextSpan(text: '23:00', style: TextStyle(color: Colors.red))
                ]),
          ),
          SizedBox(height: 5),
          const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
        ],
      ),
    ],
  ),
);

var myTabBar = TabBar(
  // Сделать навигацию на метку в тексте
  onTap: (index) {
    if (index == 0) {
    } else if (index == 1) {
    } else if (index == 2) {
    } else if (index == 3) {
    } else if (index == 4) {
    } else if (index == 5) {
    } else if (index == 6) {
    } else if (index == 7) {
    } else if (index == 8) {
    } else if (index == 9) {
    } else {}
  },

  isScrollable: true,
  tabAlignment: TabAlignment.start,
  labelColor: const Color(0xff028f52),
  indicatorColor: const Color(0xffcc3333),
  splashFactory: NoSplash.splashFactory,
  tabs: const [
    Tab(text: 'Пицца '),
    Tab(text: 'Фри-меню'),
    Tab(text: 'Напитки '),
    Tab(text: 'Молочные коктейли'),
    Tab(text: 'Шаурма'),
    Tab(text: 'Бургеры'),
    Tab(text: 'Дёнер'),
    Tab(text: 'Горячие блюда'),
    Tab(text: 'Салаты'),
    Tab(text: 'Выпечка'),
    Tab(text: 'Десерты'),
  ],
);

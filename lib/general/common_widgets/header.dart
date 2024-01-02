import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/menu_bricks.dart';

//Используется под экран Меню
class MasterHeader extends StatelessWidget {
  const MasterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        shape: Border.all(color: const Color(0xfffdfff5)),
        foregroundColor: const Color(0xfffdfff5),
        backgroundColor: const Color(0xfffdfff5),
        elevation: 0,
        bottom: TabBar(
          onTap: (value) {},
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
        ),
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(right: 40, top: 20, bottom: 40, left: 20),
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
                          TextSpan(
                              text: '9:00 ',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(text: 'до '),
                          TextSpan(
                              text: '23:00',
                              style: TextStyle(color: Colors.red))
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Используется под экраны Контакты и Вакансии
class SlaveHeader extends StatelessWidget {
  const SlaveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 40, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuMain()),
                  );
                },
                child: Image.asset(
                  "assets/images/logos/fk.png",
                  width: 150,
                  height: 60,
                  fit: BoxFit.cover,
                ),
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
                          TextSpan(
                              text: '9:00 ',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(text: 'до '),
                          TextSpan(
                              text: '23:00',
                              style: TextStyle(color: Colors.red))
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
                ],
              ),
            ],
          ),
          IconButton(
            splashColor: Colors.transparent,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuMain()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// var headerWithButton = (BuildContext context) => Padding(
//       padding: const EdgeInsets.fromLTRB(20, 12, 40, 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const MenuMain()),
//                   );
//                 },
//                 child: Image.asset(
//                   "assets/images/logos/fk.png",
//                   width: 150,
//                   height: 60,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   RichText(
//                     text: const TextSpan(
//                         text: 'Доставка с ',
//                         style: TextStyle(fontSize: 11, color: Colors.black),
//                         children: <TextSpan>[
//                           TextSpan(
//                               text: '9:00 ',
//                               style: TextStyle(color: Colors.red)),
//                           TextSpan(text: 'до '),
//                           TextSpan(
//                               text: '23:00',
//                               style: TextStyle(color: Colors.red))
//                         ]),
//                   ),
//                   const SizedBox(height: 5),
//                   const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
//                 ],
//               ),
//             ],
//           ),
//           IconButton(
//             splashColor: Colors.transparent,
//             padding: EdgeInsets.zero,
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const MenuMain()),
//               );
//             },
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );






// (index) {
//     if (index == 0) {
//     } else if (index == 1) {
//     } else if (index == 2) {
//     } else if (index == 3) {
//     } else if (index == 4) {
//     } else if (index == 5) {
//     } else if (index == 6) {
//     } else if (index == 7) {
//     } else if (index == 8) {
//     } else if (index == 9) {
//     } else {}
//   },
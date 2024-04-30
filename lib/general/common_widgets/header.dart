import 'package:flutter/material.dart';

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
        shape: Border.all(color: Colors.white),
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, double.infinity),
            child: MyTabBar()),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(right: 40, top: 20, bottom: 40, left: 20),
          child: DeliveryInfo(),
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
      padding: const EdgeInsets.fromLTRB(20, 20, 40, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DeliveryInfo(),
          IconButton(
            splashColor: Colors.transparent,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pop(context);
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

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        style: TextStyle(color: Color(0xffcc3333))),
                    TextSpan(text: 'до '),
                    TextSpan(
                        text: '23:00',
                        style: TextStyle(color: Color(0xffcc3333)))
                  ]),
            ),
            const SizedBox(height: 5),
            const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
          ],
        ),
      ],
    );
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
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
    );
  }
}

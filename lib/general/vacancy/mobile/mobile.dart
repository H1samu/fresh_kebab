import 'package:flutter/material.dart';

// Данные для мобильных устройств
Widget vacancyMobile() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Column(
          children: [
            Text(
              "Нам требуются:",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Text(
              "Вступай в нашу команду",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
      AllVacancies()
    ],
  );
}

class WorkerMobile extends StatelessWidget {
  final String imagePath;
  final String textPost;
  final String? textDescription1;
  final String? textDescription2;
  final String? textDescription3;
  final String? textDescription4;
  final String? textDescription5;
  final String? textDescription6;
  final String? textDescription7;

  const WorkerMobile({
    Key? key,
    required this.imagePath,
    required this.textPost,
    this.textDescription1,
    this.textDescription2,
    this.textDescription3,
    this.textDescription4,
    this.textDescription5,
    this.textDescription6,
    this.textDescription7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Получаем размеры экрана
    final screenSize = MediaQuery.of(context).size;

    double imageWidth = screenSize.width * 0.9;
    double imageHeight = screenSize.width * 0.65;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textPost,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              if (textDescription1 != null) Text(textDescription1!),
              if (textDescription2 != null) Text(textDescription2!),
              if (textDescription3 != null) Text(textDescription3!),
              if (textDescription4 != null) Text(textDescription4!),
              if (textDescription5 != null) Text(textDescription5!),
              if (textDescription6 != null) Text(textDescription6!),
              if (textDescription7 != null) Text(textDescription7!),
              const SizedBox(height: 30),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 110,
            decoration: const BoxDecoration(
                color: Color(0xffcc3333),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Text(
              "Позвонить",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

class AllVacancies extends StatelessWidget {
  const AllVacancies({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WorkerMobile(
          imagePath: "assets/images/vacancy/courier.jpg",
          textPost: "Курьер",
          textDescription1: "2500 рублей оклад.",
          textDescription2: "15 рублей за заказ + 6 рублей за 1 км.",
          textDescription3: "Зарплата в конце смены.",
          textDescription4: "Рабочая смена с 9:00 до 23:00.",
          textDescription5: "Подробности по телефону:",
          textDescription6: "89821245455 Настя. Telegram, WhatsApp, Viber.",
        ),
        SizedBox(height: 60),
        WorkerMobile(
          imagePath: "assets/images/vacancy/pizza_maker.jpg",
          textPost: "Пиццемейкер",
          textDescription1: "Работа по графику 2/2.",
          textDescription2: "Зарплата почасовая 185 рублей в час.",
          textDescription3: "Рабочая смена с 9:00 до 23:00.",
          textDescription4: "Подробности по телефону:",
          textDescription5: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
        ),
        SizedBox(height: 60),
        WorkerMobile(
          imagePath: "assets/images/vacancy/cleaner.jpg",
          textPost: "Уборщица",
          textDescription1: "Зарплата от 1400 рублей за смену.",
          textDescription2: "Работа по графику 2/2.",
          textDescription3: "Подробности по телефону:",
          textDescription4: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
        ),
        SizedBox(height: 60),
        WorkerMobile(
          imagePath: "assets/images/vacancy/chef.jpg",
          textPost: "Повар",
          textDescription1: "Зарплата до 50000 рублей.",
          textDescription2: "Сменный график 3/1, 5/1 ",
          textDescription3: "Подробности по телефону:",
          textDescription4: "89127445656 Ренат. Telegram, WhatsApp, Viber.",
        ),
        SizedBox(height: 60),
      ],
    );
  }
}

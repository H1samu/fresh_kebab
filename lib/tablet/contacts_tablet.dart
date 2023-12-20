import 'package:flutter/material.dart';

Widget contactsTablet() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Placeholder(
          fallbackHeight: 450,
          fallbackWidth: 300,
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Контакты",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              const SizedBox(height: 35),
              const Text(
                "+7 (3412) 22-23-33",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff028f52),
                ),
              ),
              const Text(
                "Единый номер",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const Text(
                "пн-вс 9:00-23:00",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 35),
              const Text("Азина, 234А"),
              const Text("Пушкинская, 173"),
              const Text("Дзержинского, 59Б"),
              const Text("Клубная, 24А"),
              const Text("ТРЦ Матрица, Баранова, 87"),
              const SizedBox(height: 50),
              Row(
                children: [
                  Image.asset(
                    "assets/images/logos/vk.png",
                    height: 30,
                    width: 30,
                    color: const Color(0xff028f52),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    "assets/images/logos/inst.png",
                    height: 25,
                    width: 25,
                    color: const Color(0xff028f52),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

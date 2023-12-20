import 'package:flutter/material.dart';

Widget contactsMobile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        const Placeholder(
          fallbackHeight: 300,
          fallbackWidth: double.infinity,
        ),
        const SizedBox(height: 40),
        Column(
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
              "Единый номер - пн-вс 9:00-23:00",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 35),
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
            ),
            SizedBox(height: 30),
          ],
        )
      ],
    ),
  );
}

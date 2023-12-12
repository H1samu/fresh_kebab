import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff028f52)),
          height: 170,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/logos/fk_border.png',
                  width: 150,
                  height: 56,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0, top: 10, right: 0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FooterText(
                            textFooter: "Тел. доставки +7 (3412) 22-23-33"),
                        FooterText(textFooter: "Доставка с 9:00 до 23:00"),
                        FooterText(textFooter: "Стоимость доставки 100 рублей"),
                        SizedBox(height: 10),
                        FooterText(textFooter: "Доставка от 500 рублей"),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        Container(
          height: 30,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xff028f52)),
          child: const Row(
            children: [
              Text(
                "Fresh Kebab © 2023",
                style: TextStyle(color: Color(0xff77c3a2), fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FooterText extends StatelessWidget {
  final String textFooter;
  const FooterText({super.key, required this.textFooter});

  @override
  Widget build(BuildContext context) {
    return Text(
      textFooter,
      style: const TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}

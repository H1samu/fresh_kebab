import 'package:flutter/material.dart';
import 'package:fresh_kebab/responsive/mobile/contacts_mobile.dart';
import 'package:fresh_kebab/responsive/mobile/vacancy_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff028f52)),
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logos/fk_border.png',
                width: 150,
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
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
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Contacts()),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Контакты  ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Vacancy()),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Вакансии  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Icon(
                                Icons.person_search,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
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
            mainAxisAlignment: MainAxisAlignment.center,
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
      style: const TextStyle(color: Colors.white, fontSize: 11),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/url_launcher.dart';

// Футер для экрана Меню
class MasterFooter extends StatelessWidget {
  const MasterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 11);
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff028f52)),
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/menu_main');
                },
                child: Image.asset(
                  'assets/images/logos/fk_border.png',
                  width: 150,
                  height: 60,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => MyLaunch.call(),
                          child: const Text('Тел. доставки +7 (3412) 22-23-33',
                              style: textStyle),
                        ),
                        const Text('Доставка с 9:00 до 23:00',
                            style: textStyle),
                        const Text('Стоимость доставки 100 рублей',
                            style: textStyle),
                        const Text('Доставка от 500 рублей', style: textStyle),
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
                            Navigator.of(context).pushNamed('/contacts');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Контакты  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  )),
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
                            Navigator.of(context).pushNamed('/vac');
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Вакансии  ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
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
            color: Color(0xfffdfff5),
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
                "Fresh Kebab © 2024",
                style: TextStyle(color: Color(0xff77c3a2), fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// Футер для экранов Контакты и Вакансии
class SlaveFooter extends StatelessWidget {
  const SlaveFooter({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white, fontSize: 11);
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff028f52)),
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/logos/fk_border.png',
                  width: 150,
                  height: 60,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => MyLaunch.call(),
                          child: const Text('Тел. доставки +7 (3412) 22-23-33',
                              style: textStyle),
                        ),
                        const Text('Доставка с 9:00 до 23:00',
                            style: textStyle),
                        const Text('Стоимость доставки 100 рублей',
                            style: textStyle),
                        const Text('Доставка от 500 рублей', style: textStyle),
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
            color: Color(0xfffdfff5),
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
                "Fresh Kebab © 2024",
                style: TextStyle(color: Color(0xff77c3a2), fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}

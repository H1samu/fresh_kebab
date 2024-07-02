import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/common_widgets/footer.dart';
import 'package:fresh_kebab/screens/common_widgets/header.dart';
import 'package:fresh_kebab/screens/common_widgets/url_launcher.dart';
import 'package:fresh_kebab/screens/contacts/map/map_screen/map_screen.dart';

bool isMobile = !kIsWeb && (Platform.isAndroid || Platform.isIOS);

class ContactsMain extends StatelessWidget {
  const ContactsMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 550 ? contactsMobile() : contactsTablet();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                const SlaveHeader(),
                content,
              ],
            ),
            const SlaveFooter()
          ],
        ),
      ),
    );
  }
}

// Данные для мобильных устройств
Widget contactsMobile() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: (isMobile ? const MapScreen() : const Placeholder()),
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
            GestureDetector(
              onTap: () => MyLaunch.callMain(),
              child: const Text(
                "+7 (3412) 22-23-33",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: FreshKebabColors.fkGreen,
                ),
              ),
            ),
            const Text(
              "Единый номер - пн-вс 9:00-23:00",
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
                GestureDetector(
                  onTap: () => MyLaunch.linkVk(),
                  child: Image.asset(
                    "assets/images/logos/vk.png",
                    height: 30,
                    width: 30,
                    color: FreshKebabColors.fkGreen,
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => MyLaunch.linkInst(),
                  child: Image.asset(
                    "assets/images/logos/inst.png",
                    height: 25,
                    width: 25,
                    color: FreshKebabColors.fkGreen,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        )
      ],
    ),
  );
}

// Данные НЕ для мобильных устройств
Widget contactsTablet() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 450,
          width: 300,
          child: (isMobile ? const MapScreen() : const Placeholder()),
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
              GestureDetector(
                onTap: () => MyLaunch.callMain(),
                child: const Text(
                  "+7 (3412) 22-23-33",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: FreshKebabColors.fkGreen,
                  ),
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
                  GestureDetector(
                    onTap: () => MyLaunch.linkVk(),
                    child: const FaIcon(
                      FontAwesomeIcons.vk,
                      color: FreshKebabColors.fkGreen,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => MyLaunch.linkInst(),
                    child: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: FreshKebabColors.fkGreen,
                      size: 30,
                    ),
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

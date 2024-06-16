import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/footer.dart';
import 'package:fresh_kebab/screens/common_widgets/header.dart';
import 'package:fresh_kebab/screens/vacancy/big_screen/big_screen_vacancy.dart';
import 'package:fresh_kebab/screens/vacancy/small_screen/small_screen_vacancy.dart';

class VacancyMain extends StatelessWidget {
  const VacancyMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 705
        ? allVacancysMobile(context)
        : allVacancysNotMobile();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                const SlaveHeader(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            "Нам требуются:",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
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
                    content
                  ],
                )
              ],
            ),
            const SlaveFooter()
          ],
        ),
      ),
    );
  }
}

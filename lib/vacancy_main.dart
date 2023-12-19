import 'package:flutter/material.dart';
import 'package:fresh_kebab/mobile/vacancy_mobile.dart';
import 'package:fresh_kebab/tablet/vacancy_tablet.dart';
import 'package:fresh_kebab/widgets/footer.dart';
import 'package:fresh_kebab/widgets/header.dart';

class VacancyMain extends StatelessWidget {
  const VacancyMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 702 ? mobileVacancy() : tabletVacancy();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Column(
                children: [
                  headerWithButton(context),
                  content,
                ],
              ),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/common_widgets/footer.dart';
import 'package:fresh_kebab/general/common_widgets/header.dart';
import 'package:fresh_kebab/general/vacancy/mobile/mobile.dart';
import 'package:fresh_kebab/general/vacancy/tablet/tablet.dart';

class VacancyMain extends StatelessWidget {
  const VacancyMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 705 ? vacancyMobile() : vacancyTablet();
    return MaterialApp(
      home: Scaffold(
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
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}

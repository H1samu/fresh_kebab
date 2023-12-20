import 'package:flutter/material.dart';
import 'package:fresh_kebab/mobile/contacts_mobile.dart';
import 'package:fresh_kebab/tablet/contacts_tablet.dart';
import 'package:fresh_kebab/widgets/footer.dart';
import 'package:fresh_kebab/widgets/header.dart';

class ContactsMain extends StatelessWidget {
  const ContactsMain({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Widget content = screenWidth <= 550 ? contactsMobile() : contactsTablet();
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

import 'package:flutter/material.dart';
import 'package:fresh_kebab/responsive/desktop_body.dart';
import 'package:fresh_kebab/responsive/mobile/contacts_mobile.dart';
import 'package:fresh_kebab/responsive/mobile/main_mobile.dart';
import 'package:fresh_kebab/responsive/mobile/vacancy_mobile.dart';
import 'package:fresh_kebab/responsive/responsive_layout.dart';
import 'package:fresh_kebab/responsive/tablet_body.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/contact': (context1) => const Contacts(),
        '/vacancy': (context2) => const Vacancy(),
        '/main': (context3) => const MainMobile(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: DefaultTabController(
        length: 11,
        child: ResponsiveLayout(
          mobileBody: const MainMobile(),
          tabletBody: const TabletScaffold(),
          desktopBody: const DesktopScaffold(),
        ),
      ),
    );
  }
}

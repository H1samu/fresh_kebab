import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/contacts/contacts.dart';
import 'package:fresh_kebab/general/menu/menu.dart';
import 'package:fresh_kebab/general/vacancy/vacancy.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuMain(),
      routes: {
        '/menu_main': (context) => const MenuMain(),
        '/vac': (context) => const VacancyMain(),
        '/contacts': (context) => const ContactsMain()
      },
      initialRoute: '/menu_main',
    );
  }
}

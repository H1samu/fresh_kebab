import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/provider/product_provider.dart';
import 'package:fresh_kebab/screens/contacts/contacts.dart';
import 'package:fresh_kebab/screens/menu/menu.dart';
import 'package:fresh_kebab/screens/vacancy/vacancy.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MenuMain(),
        routes: {
          '/menu_main': (context) => const MenuMain(),
          '/vac': (context) => const VacancyMain(),
          '/contacts': (context) => const ContactsMain(),
        },
      ),
    );
  }
}

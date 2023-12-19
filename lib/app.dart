import 'package:flutter/material.dart';
import 'package:fresh_kebab/desktop/desktop_body.dart';
import 'package:fresh_kebab/mobile/menu_mobile.dart';
import 'package:fresh_kebab/widgets/responsive_layout.dart';
import 'package:fresh_kebab/tablet/menu_tablet.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: DefaultTabController(
        length: 11,
        child: ResponsiveLayout(
          mobileBody: const MenuMobile(),
          tabletBody: const TabletScaffold(),
          desktopBody: const DesktopScaffold(),
        ),
      ),
    );
  }
}

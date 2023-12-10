import 'package:flutter/material.dart';
import 'package:fresh_kebab/responsive/desktop_body.dart';
import 'package:fresh_kebab/responsive/mobile_body.dart';
import 'package:fresh_kebab/responsive/responsive_layout.dart';
import 'package:fresh_kebab/responsive/tablet_body.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
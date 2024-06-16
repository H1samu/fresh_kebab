import 'package:flutter/material.dart';
import 'package:fresh_kebab/app.dart';
import 'package:provider/provider.dart';

void main() {
  const app = App();
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) {},
    child: app,
  ));
}

import 'package:flutter/material.dart';
import '../constData.dart';
import '../routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: appTheme,
      // home: _pageRoute(window.defaultRouteName),
      // initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

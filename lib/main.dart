//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/routing/app_pages.dart';
import 'package:svg_renderer/configuration/routing/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG Parser',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.generate,
      initialRoute: AppPages.initial,
    );
  }
}

import 'package:cmms_app/domain/entities/app_data.dart';

import 'package:cmms_app/presentation/theme/theme_data.dart';

import 'package:flutter/material.dart';

import 'screens/MainScreen/MainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: AppData.getTheme(SupportedTheme.light).data,
      home: const MainScreen(),
    );
  }
}

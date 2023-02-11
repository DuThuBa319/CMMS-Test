import 'package:cmms_app/screens/CustomScreenForm.dart';
import 'package:cmms_app/screens/MainScreen/MainScreenView.dart';

import "package:flutter/material.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const CustomScreenForm(child: MainScreenView());
  }
}

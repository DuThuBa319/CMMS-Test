import 'package:cmms_app/screens/CustomScreenForm.dart';
import 'package:cmms_app/screens/ScheduleScreen/ScheduleWidget.dart';

import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return const CustomScreenForm(child: ScheduleWidget());
  }
}

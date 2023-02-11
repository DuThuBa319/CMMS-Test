import 'package:cmms_app/presentation/common_widget/custom_bottom_navigation_bar.dart';
import 'package:cmms_app/presentation/theme/theme_color.dart';
import "package:flutter/material.dart";

class CustomScreenForm extends StatefulWidget {
  const CustomScreenForm({super.key, this.child});
  final Widget? child;
  @override
  State<CustomScreenForm> createState() => _CustomScreenFormState();
}

class _CustomScreenFormState extends State<CustomScreenForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Title",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: AppColor.barColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
        leading: Drawer(
            backgroundColor: AppColor.barColor,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ))),
      ),
      drawer: const Drawer(),
      body: widget.child,
      //-----------------------//
      bottomNavigationBar: BottomAppBar(
        child: CustomBottomNavigationBar(
          selectedIdx: null,
          onItemSelection: null,
          items: <BottomBarItemData>[
            BottomBarItemData(
              icon: 'assets/images/baseline_home_black_24dp.png',
              label: 'Home',
              selectedIcon: 'Home',
              isOver: false,
            ),
            BottomBarItemData(
              icon: 'assets/images/baseline_history_black_24dp.png',
              label: 'History',
              selectedIcon: 'Home',
              isOver: false,
            ),
            BottomBarItemData(
              icon: 'assets/images/baseline_notifications_black_24dp.png',
              label: 'Notification',
              selectedIcon: 'Home',
              isOver: false,
            ),
            BottomBarItemData(
              icon: 'assets/images/baseline_account_circle_black_24dp.png',
              label: 'Account',
              selectedIcon: 'Home',
              isOver: false,
            )
          ],
        ),
      ),
    );
  }
}

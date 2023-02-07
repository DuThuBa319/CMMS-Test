import 'package:cmms_app/screens/Widget2.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Title",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: const Drawer(),
      body: const ScheduleWidget(),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Bottom_BoxIcon(Icons.home, 'Home'),
            Bottom_BoxIcon(Icons.history, 'History'),
            Bottom_BoxIcon(Icons.notifications, 'Notification'),
            Bottom_BoxIcon(Icons.person, 'Account'),
          ],
        ),
      ),
    );
  }

  Widget Bottom_BoxIcon(
    IconData icon,
    String string,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 12, 15, 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: IconButton(
              icon: Icon(
                icon,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
              padding: const EdgeInsets.fromLTRB(22, 6, 22, 6),
              onPressed: () {},
            ),
          ),
          Text(
            string,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

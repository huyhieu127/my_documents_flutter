import 'package:flutter/material.dart';
import 'package:my_documents_flutter/screen/navigatonbar/home_page.dart';
import 'package:my_documents_flutter/screen/navigatonbar/schedule_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFBFFFFFF),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
              icon: currentPageIndex == 0
                  ? const Icon(Icons.home_work_sharp, color: Colors.blue)
                  : const Icon(Icons.home_work_outlined),
              label: "Home"),
          NavigationDestination(
              icon: currentPageIndex == 1
                  ? const Icon(Icons.calendar_today, color: Colors.blue)
                  : const Icon(Icons.calendar_today_outlined),
              label: "Schedule"),
          NavigationDestination(
              icon: currentPageIndex == 2
                  ? const Icon(Icons.message_rounded, color: Colors.blue)
                  : const Icon(Icons.message_outlined),
              label: "Message"),
          NavigationDestination(
              icon: currentPageIndex == 3
                  ? const Icon(Icons.account_circle_sharp, color: Colors.blue)
                  : const Icon(Icons.account_circle_outlined),
              label: "Account"),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const [
          HomePage(),
          SchedulePage(),
          SchedulePage(),
          SchedulePage(),
        ],
      ),
    );
  }
}

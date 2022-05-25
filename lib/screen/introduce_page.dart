import 'package:flutter/material.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({Key? key}) : super(key: key);

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final _pageController = PageController();


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 140),
        child: PageView(
          controller: _pageController,
          children: [
            Column(
              children: [
                Text("Proven specialists"),
                Image.asset("assets/img_introduce_1.png"),
                Text("We check each specialist before he starts work"),
              ],
            ),
            Column(
              children: [
                Text("Honest ratings"),
                Text("We carefully check each specialist and put honest ratings"),
              ],
            ),
            Column(
              children: [
                Text("Insured orders"),
                Text("We insure each order for the amount of \$500"),
              ],
            ),
            Column(
              children: [
                Text("Create order"),
                Text("It's easy, just click on the plus"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

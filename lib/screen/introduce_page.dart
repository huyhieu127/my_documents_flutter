import 'package:flutter/material.dart';
import 'package:my_documents_flutter/screen/sign_in_page.dart';
import 'package:my_documents_flutter/utils/asset_utils.dart';
import 'package:my_documents_flutter/utils/color_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroducePage extends StatefulWidget {
  const IntroducePage({Key? key}) : super(key: key);

  @override
  State<IntroducePage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<IntroducePage> {
  final _pageController = PageController();
  var _isLastIndex = false;

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
          onPageChanged: (index) {
            setState(() => _isLastIndex = index == 3);
          },
          children: [
            _buildContentIntroduce(
              title: "Proven\nspecialists",
              pathImage: AssetUtils.imgIntroduce1,
              content: "We check each specialist before he starts work",
            ),
            _buildContentIntroduce(
              title: "Honest\nratings",
              pathImage: AssetUtils.imgIntroduce2,
              content:
                  "We carefully check each specialist and put honest ratings",
            ),
            _buildContentIntroduce(
              title: "Insured\norders",
              pathImage: AssetUtils.imgIntroduce3,
              content: "We insure each order for the amount of \$500",
            ),
            _buildContentIntroduce(
              title: "Create\norder",
              pathImage: AssetUtils.imgIntroduce4,
              content: "It's easy, just click on the plus",
            ),
          ],
        ),
      ),
      bottomSheet: GestureDetector(
        child: SizedBox(
          height: 140,
          child: Center(
            child: _isLastIndex ? _buildButtonAdd() : _buildFooter(),
          ),
        ),
      ),
    );
  }

  _buildContentIntroduce(
          {required String title,
          required String pathImage,
          required String content}) =>
      Padding(
        padding: const EdgeInsets.only(left: 60, right: 60, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(ColorUtils.txtColor1),
                fontWeight: FontWeight.w500,
                fontSize: 40,
              ),
            ),
            Image.asset(pathImage),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(ColorUtils.txtColor2),
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      );

  _buildFooter() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SmoothPageIndicator(
            controller: _pageController,
            count: 4,
            effect: ExpandingDotsEffect(
              dotWidth: 8,
              dotHeight: 8,
              spacing: 4,
              activeDotColor: Colors.grey,
              dotColor: Colors.grey.shade300,
              expansionFactor: 2.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(ColorUtils.primary),
                minimumSize: const Size.fromHeight(60),
                shadowColor: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      );

  _buildButtonAdd() => ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const SignInPage()),
          // );
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage()));
        },
        style: ElevatedButton.styleFrom(
          primary: const Color(ColorUtils.primary),
          fixedSize: const Size(80, 80),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      );
}

import 'package:concentric_transition/page_view.dart';
import 'package:concentric_transition_project/model/page_model.dart';
import 'package:concentric_transition_project/utils/constants/colors.dart';
import 'package:concentric_transition_project/utils/constants/image_strings.dart';
import 'package:concentric_transition_project/utils/constants/strings.dart';
import 'package:concentric_transition_project/widget/pages.dart';
import 'package:flutter/material.dart';

class ScreenOnBoarding extends StatelessWidget {
  const ScreenOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConcentricPageView(
        itemCount: pages.length,
        itemBuilder: (index) {
          return SafeArea(child: KPage(pageModel: pages[index]));
        },
        colors: pages.map((e) => e.color).toList(),
        radius: screenWidth * 0.1,
        nextButtonBuilder: (context) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.navigate_next,
            size: screenWidth * 0.08,
          ),
        ),
      ),
    );
  }
}

final pages = [
  PageModel(
    textColor: Colors.black,
    color: Kcolors.kPageColor1,
    title: KStrings.pageTitle1,
    image: KImageStrings.kLottie1,
  ),
  PageModel(
    textColor: Colors.white,
    color: Kcolors.kPageColor2,
    title: KStrings.pageTitle2,
    image: KImageStrings.kLottie2,
  ),
  PageModel(
      textColor: Colors.black,
      color: Kcolors.kPageColor3,
      title: KStrings.pageTitle3,
      image: KImageStrings.kLottie2),
];

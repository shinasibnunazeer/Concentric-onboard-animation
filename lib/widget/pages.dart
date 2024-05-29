import 'package:concentric_transition_project/model/page_model.dart';
import 'package:concentric_transition_project/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class KPage extends StatelessWidget {
  const KPage({super.key, required this.pageModel});
  final PageModel pageModel;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    space(double p) => SizedBox(height: screenWidth * p / 100);
    return Column(
      children: [
        space(45),
        Container(
          decoration: BoxDecoration(
            color: pageModel.color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: -5,
                blurRadius: 50,
                offset: const Offset(0, 30),
              ),
            ],
          ),
          height: screenWidth * 0.6,
          width: screenWidth * 0.8,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    pageModel.image.toString(),
                  ),
                ],
              )),
        ),
        space(10),
        TitleText(
            title: pageModel.title,
            style: TextStyle(
                fontSize: 45,
                fontFamily: 'demo',
                color: pageModel.textColor,
                fontWeight: FontWeight.w600,
                height: 1)),
        space(50),
      ],
    );
  }
}

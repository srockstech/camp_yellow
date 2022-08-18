import 'package:camp_yellow/design/FontStyles.dart';
import 'package:flutter/material.dart';

class ClanFeaturedPerformances extends StatelessWidget {
  const ClanFeaturedPerformances({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenHeight * 0.05,
          child: Text(
            'Past featured performances',
            style: headingFontStyle(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.28,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight * 0.13,
                    child: Image(
                      image: AssetImage('assets/images/clan_dp.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  Flexible(
                    child: Text(
                      'Priya in International Debate League',
                      style: subheadingFontStyle(screenWidth),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight * 0.13,
                    child: Image(
                      image: AssetImage('assets/images/clan_dp.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  Flexible(
                    child: Text(
                      'Akshay in Global Quizzing Finals',
                      style: subheadingFontStyle(screenWidth),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.05,
          child: Center(
            child: Text(
              'see more',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

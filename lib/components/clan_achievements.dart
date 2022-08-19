import 'package:camp_yellow/design/FontStyles.dart';
import 'package:flutter/material.dart';

class ClanAchievements extends StatelessWidget {
  const ClanAchievements({
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
            'Achievements',
            style: headingFontStyle(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current league',
                    style: subheadingFontStyle(screenWidth),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    child: Image(
                      image: AssetImage('assets/images/golden_shield.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'League ranking',
                    style: subheadingFontStyle(screenWidth),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    child: Center(
                      child: Text(
                        '11th',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: screenWidth * 0.09,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Experience',
                    style: subheadingFontStyle(screenWidth),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    child: Center(
                      child: Text(
                        '2000 xp',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: screenWidth * 0.065,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:camp_yellow/design/FontStyles.dart';
import 'package:flutter/material.dart';

class ClanMembers extends StatelessWidget {
  const ClanMembers({
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
            'Clan members',
            style: headingFontStyle(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.19,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: screenHeight * 0.09,
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/images/clan_dp.jpg'),
                      radius: screenWidth * 0.08,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  Flexible(
                    child: Text(
                      'Lorem ipsum - Clan head',
                      style: subheadingFontStyle(screenWidth),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: screenHeight * 0.09,
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/images/clan_dp.jpg'),
                      radius: screenWidth * 0.08,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  Flexible(
                    child: Text(
                      'Lorem ipsum - Debating Sensei',
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

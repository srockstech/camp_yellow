import 'package:camp_yellow/design/FontStyles.dart';
import 'package:camp_yellow/widgets/clan_status_display.dart';
import 'package:camp_yellow/widgets/separator.dart';
import 'package:flutter/material.dart';

class ClanProfileScreen extends StatelessWidget {
  const ClanProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(screenHeight * 0.03),
          children: [
            ClanStatusDisplay(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Achievements',
                  style: headingFontStyle(screenWidth),
                ),
                Row(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}

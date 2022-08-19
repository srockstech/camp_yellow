import 'package:camp_yellow/design/FontStyles.dart';
import 'package:flutter/material.dart';

class ClanLiveActivities extends StatelessWidget {
  const ClanLiveActivities({
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
            'Live clan activities on platform',
            style: headingFontStyle(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.33,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: screenHeight * 0.15,
                      child: Image(
                        image: AssetImage('assets/images/activities_bg.jpg'),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                      child: Text(
                        'Live trading championship',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: screenHeight * 0.15,
                      child: Image(
                        image: AssetImage('assets/images/activities_bg.jpg'),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                      child: Text(
                        'Treasure hunt',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
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

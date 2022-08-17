import 'package:flutter/material.dart';

class ClanStatusDisplay extends StatelessWidget {
  const ClanStatusDisplay({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: screenHeight * 0.01),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            color: Colors.yellow,
            padding: EdgeInsets.all(screenHeight * 0.004),
            child: Image(
              image: AssetImage('assets/images/clan_dp.jpg'),
            ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight * 0.16,
            color: Colors.black.withOpacity(0.6),
            child: Padding(
              padding: EdgeInsets.all(screenHeight * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Clan name: Lorem Ipsum',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.057,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '28 members, 5 online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

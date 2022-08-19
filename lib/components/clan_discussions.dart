import 'package:camp_yellow/design/FontStyles.dart';
import 'package:flutter/material.dart';

class ClanDiscussions extends StatelessWidget {
  const ClanDiscussions({
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
            'Clan discussions',
            style: headingFontStyle(screenWidth),
          ),
        ),
        Container(
          height: screenHeight * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'General thread:',
                      style: subheadingFontStyle(screenWidth),
                    ),
                    Text(
                      '15 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '(live) Anyone enthu for trading league',
                      style: subheadingFontStyle(screenWidth),
                    ),
                    Text(
                      '10 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '(live) Anyone enthu for trading league',
                      style: subheadingFontStyle(screenWidth),
                    ),
                    Text(
                      '10 unread messages',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w500,
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

import 'package:camp_yellow/components/bottom_navigation_menu.dart';
import 'package:camp_yellow/components/clan_achievements_banner.dart';
import 'package:camp_yellow/components/clan_featured_performances.dart';
import 'package:camp_yellow/components/clan_live_activities.dart';
import 'package:camp_yellow/components/clan_members.dart';
import 'package:camp_yellow/design/FontStyles.dart';
import 'package:camp_yellow/widgets/clan_status_display.dart';
import 'package:camp_yellow/widgets/separator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClanProfileScreen extends StatefulWidget {
  ClanProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ClanProfileScreen> createState() => _ClanProfileScreenState();
}

class _ClanProfileScreenState extends State<ClanProfileScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationMenu(
        screenWidth: screenWidth,
        selectedIndex: selectedIndex,
        onTap: (index) {
          if (index != selectedIndex) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(screenHeight * 0.03),
          children: [
            ClanStatusDisplay(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanAchievementsBanner(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanFeaturedPerformances(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanLiveActivities(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            Column(
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
            ),
            Separator(screenHeight: screenHeight),
            ClanMembers(screenHeight: screenHeight, screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}

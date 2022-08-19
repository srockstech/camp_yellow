import 'package:camp_yellow/components/bottom_navigation_menu.dart';
import 'package:camp_yellow/components/clan_achievements.dart';
import 'package:camp_yellow/components/clan_discussions.dart';
import 'package:camp_yellow/components/clan_featured_performances.dart';
import 'package:camp_yellow/components/clan_live_activities.dart';
import 'package:camp_yellow/components/clan_members.dart';
import 'package:camp_yellow/widgets/clan_status_display.dart';
import 'package:camp_yellow/widgets/separator.dart';
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
            ClanAchievements(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanFeaturedPerformances(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanLiveActivities(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanDiscussions(
                screenHeight: screenHeight, screenWidth: screenWidth),
            Separator(screenHeight: screenHeight),
            ClanMembers(screenHeight: screenHeight, screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}

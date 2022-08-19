import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationMenu extends StatelessWidget {
  final double screenWidth;
  final int selectedIndex;
  final Function(int) onTap;
  const BottomNavigationMenu({
    required this.screenWidth,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      iconSize: screenWidth * 0.07,
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: '',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.stars_outlined,
            color: Colors.white,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.rankingStar,
            color: Colors.white,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people_alt_rounded,
            color: Colors.white,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            foregroundImage: AssetImage('assets/images/performance_pic.jpg'),
          ),
          label: '',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'screens/clan_profile_screen.dart';

void main() {
  runApp(const CampYellow());
}

class CampYellow extends StatelessWidget {
  const CampYellow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        splashColor: Colors.yellow,
        colorScheme: ColorScheme.light(
          secondary: Colors.yellow,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ClanProfileScreen(),
    );
  }
}

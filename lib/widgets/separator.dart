import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Divider(
        color: Colors.white,
        height: screenHeight * 0.05,
        thickness: screenHeight * 0.0035,
      ),
    );
  }
}

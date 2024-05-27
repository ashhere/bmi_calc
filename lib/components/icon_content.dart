import 'package:flutter/material.dart';
import '../constants.dart';



class IconContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IconContent({required this.gender, required this.icon});

  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        KsizedBox,
        Text(
          gender,
          style: KlabelTextStyle,
        ),
      ],
    );
  }
}
